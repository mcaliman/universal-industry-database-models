use metamodel_party;

INSERT INTO party (party_type)
VALUES ( 'person'),
       ( 'person'),
       ( 'organization');

INSERT INTO role_type (name, description)
VALUES ('CEO', 'Chief Executive Officer'),
       ('Employee', 'Employee of the company'),
       ('Customer', 'Customer of the company');

INSERT INTO party_role (for_party, described_by_role_type)
VALUES (1, 1),
       (2, 2),
       (3, 3);

INSERT INTO party_relationship_type (name, description)
VALUES ('Employment', 'Employment relationship between a person and an organization'),
       ('Purchase', 'Purchase relationship between a person and an organization');

INSERT INTO party_relationship (from_party, to_party, described_by_relationship_type)
VALUES (1, 3, 1),
       (2, 3, 1),
       (3, 1, 2);

INSERT INTO person (party_id, first_name, last_name)
VALUES (1, 'Alice', 'Red'),
       (2, 'Bob', 'Brown');

INSERT INTO organization (party_id, legal_name)
VALUES (3, 'ACME Inc.');

