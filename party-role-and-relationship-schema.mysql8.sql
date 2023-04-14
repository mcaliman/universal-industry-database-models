drop database if exists metamodel_party;
create database metamodel_party;
use metamodel_party;

create table party
(
    party_id   INT AUTO_INCREMENT PRIMARY KEY,
    party_type VARCHAR(255)
);

CREATE TABLE role_type
(
    role_type_id INT AUTO_INCREMENT PRIMARY KEY,
    name         VARCHAR(255),
    description  TEXT
);

CREATE TABLE party_role
(
    party_role_id          INT AUTO_INCREMENT PRIMARY KEY,
    for_party              INT,
    described_by_role_type INT,
    FOREIGN KEY (for_party) REFERENCES party (party_id),
    FOREIGN KEY (described_by_role_type) REFERENCES role_type (role_type_id)
);

CREATE TABLE party_relationship_type
(
    party_relationship_type_id INT AUTO_INCREMENT PRIMARY KEY,
    name                       VARCHAR(255),
    description                TEXT
);

CREATE TABLE party_relationship
(
    party_relationship_id          INT AUTO_INCREMENT PRIMARY KEY,
    from_party                     INT,
    to_party                       INT,
    described_by_relationship_type INT,
    FOREIGN KEY (described_by_relationship_type) REFERENCES party_relationship_type (party_relationship_type_id),
    FOREIGN KEY (from_party) REFERENCES party (party_id),
    FOREIGN KEY (to_party) REFERENCES party (party_id)
);

CREATE TABLE person
(
    party_id   INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name  VARCHAR(255),
    FOREIGN KEY (party_id) REFERENCES party (party_id)
);

CREATE TABLE organization
(
    party_id   INT PRIMARY KEY,
    legal_name VARCHAR(255),
    FOREIGN KEY (party_id) REFERENCES party (party_id)
);


CREATE VIEW view_person AS
SELECT p.party_id, p.first_name, p.last_name
FROM person p
         JOIN party pa ON p.party_id = pa.party_id;

CREATE VIEW view_organization AS
SELECT o.party_id, o.legal_name
FROM organization o
         JOIN party pa ON o.party_id = pa.party_id;

CREATE OR REPLACE VIEW view_party_relationship AS
SELECT pr.party_relationship_id,
       CASE
           WHEN pa1.party_type = 'person' THEN CONCAT(p1.first_name, ' ', p1.last_name)
           WHEN pa1.party_type = 'organization' THEN o1.legal_name
           ELSE NULL
           END  AS from_party_name,
       CASE
           WHEN pa2.party_type = 'person' THEN CONCAT(p2.first_name, ' ', p2.last_name)
           WHEN pa2.party_type = 'organization' THEN o2.legal_name
           ELSE NULL
           END  AS to_party_name,
       prt.name AS relationship_type_name
FROM party_relationship pr
         JOIN party pa1 ON pr.from_party = pa1.party_id
         JOIN party pa2 ON pr.to_party = pa2.party_id
         JOIN party_relationship_type prt ON pr.described_by_relationship_type = prt.party_relationship_type_id
         LEFT JOIN person p1 ON pa1.party_id = p1.party_id
         LEFT JOIN person p2 ON pa2.party_id = p2.party_id
         LEFT JOIN organization o1 ON pa1.party_id = o1.party_id
         LEFT JOIN organization o2 ON pa2.party_id = o2.party_id;


DELIMITER //
CREATE PROCEDURE insert_person(IN party_type_value VARCHAR(255), IN first_name VARCHAR(255), IN last_name VARCHAR(255))
BEGIN
    INSERT INTO party (party_type)
    VALUES (party_type_value);

    SET @last_party_id = LAST_INSERT_ID();

    INSERT INTO person (party_id, first_name, last_name)
    VALUES (@last_party_id, first_name, last_name);
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE insert_organization(IN party_type_value VARCHAR(255), IN legal_name VARCHAR(255))
BEGIN
    INSERT INTO party (party_type)
    VALUES (party_type_value);

    SET @last_party_id = LAST_INSERT_ID();

    INSERT INTO organization (party_id, legal_name)
    VALUES (@last_party_id, legal_name);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_person(IN party_id INT, IN first_name VARCHAR(255), IN last_name VARCHAR(255))
BEGIN
    UPDATE person
    SET first_name = first_name,
        last_name  = last_name
    WHERE party_id = party_id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_organization(IN party_id INT, IN legal_name VARCHAR(255))
BEGIN
    UPDATE organization
    SET legal_name = legal_name
    WHERE party_id = party_id;
END //
DELIMITER ;