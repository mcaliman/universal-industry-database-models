drop schema if exists universalschema;
create schema universalschema;
use universalschema;
-- #1
CREATE TABLE insurance_product
(
    product_id                   INT AUTO_INCREMENT PRIMARY KEY,
    name                         TEXT NOT NULL,
    introduction_date            DATE,
    sales_discontinuation_date   DATE,
    support_discontinuation_date DATE,
    comment                      TEXT
);
CREATE TABLE product_category
(
    product_category_id INT AUTO_INCREMENT PRIMARY KEY,
    description         TEXT
);
CREATE TABLE product_category_classification
(
    from_date           DATE    NOT NULL,
    thru_date           DATE,
    primary_flag        BOOLEAN NOT NULL,
    comment             TEXT,
    product_id          INT,
    product_category_id INT,
    PRIMARY KEY (from_date),
    FOREIGN KEY (product_id) REFERENCES insurance_product (product_id),
    FOREIGN KEY (product_category_id) REFERENCES product_category (product_category_id)
);
-- #2
CREATE TABLE insurance_type_categorization
(
    insurance_type_categorization_id INT AUTO_INCREMENT PRIMARY KEY,
    product_category_id              INT,
    description                      TEXT,
    FOREIGN KEY (product_category_id) REFERENCES product_category (product_category_id)
);
CREATE TABLE individual_or_group
(
    individual_or_group_id INT AUTO_INCREMENT PRIMARY KEY,
    product_category_id    INT,
    description            TEXT,
    FOREIGN KEY (product_category_id) REFERENCES product_category (product_category_id)
);
CREATE TABLE industry_target_categorization
(
    industry_target_categorization_id INT AUTO_INCREMENT PRIMARY KEY,
    product_category_id               INT,
    description                       TEXT,
    FOREIGN KEY (product_category_id) REFERENCES product_category (product_category_id)
);
CREATE TABLE property_insurance
(
    property_insurance_id            INT AUTO_INCREMENT PRIMARY KEY,
    insurance_type_categorization_id INT,
    description                      TEXT,
    FOREIGN KEY (insurance_type_categorization_id) REFERENCES insurance_type_categorization (insurance_type_categorization_id)
);
CREATE TABLE life_insurance
(
    life_insurance_id                INT AUTO_INCREMENT PRIMARY KEY,
    insurance_type_categorization_id INT,
    description                      TEXT,
    FOREIGN KEY (insurance_type_categorization_id) REFERENCES insurance_type_categorization (insurance_type_categorization_id)
);

CREATE TABLE casuality_insurance
(
    casuality_insurance_id           INT AUTO_INCREMENT PRIMARY KEY,
    insurance_type_categorization_id INT,
    description                      TEXT,
    FOREIGN KEY (insurance_type_categorization_id) REFERENCES insurance_type_categorization (insurance_type_categorization_id)
);
-- #3
CREATE TABLE health_insurance
(
    health_insurance_id              INT AUTO_INCREMENT PRIMARY KEY,
    insurance_type_categorization_id INT,
    description                      TEXT,
    FOREIGN KEY (insurance_type_categorization_id) REFERENCES insurance_type_categorization (insurance_type_categorization_id)
);
CREATE TABLE accident_insurance
(
    accident_insurance_id  INT AUTO_INCREMENT PRIMARY KEY,
    casuality_insurance_id INT,
    description            TEXT,
    FOREIGN KEY (casuality_insurance_id) REFERENCES casuality_insurance (casuality_insurance_id)
);
CREATE TABLE natural_disaster_insurance
(
    natural_disaster_insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    casuality_insurance_id        INT,
    description                   TEXT,
    FOREIGN KEY (casuality_insurance_id) REFERENCES casuality_insurance (casuality_insurance_id)
);

CREATE TABLE term_life_insurance
(
    term_life_insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    life_insurance_id      INT,
    description            TEXT,
    FOREIGN KEY (life_insurance_id) REFERENCES life_insurance (life_insurance_id)
);
CREATE TABLE whole_life
(
    whole_life_id     INT AUTO_INCREMENT PRIMARY KEY,
    life_insurance_id INT,
    description       TEXT,
    FOREIGN KEY (life_insurance_id) REFERENCES life_insurance (life_insurance_id)
);
CREATE TABLE universal_life_insurance
(
    universal_life_insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    life_insurance_id           INT,
    description                 TEXT,
    FOREIGN KEY (life_insurance_id) REFERENCES life_insurance (life_insurance_id)
);
CREATE TABLE home_owners_insurance
(
    home_owners_insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    property_insurance_id    INT,
    description              TEXT,
    FOREIGN KEY (property_insurance_id) REFERENCES property_insurance (property_insurance_id)
);
-- #4
CREATE TABLE vehicle_insurance
(
    vehicle_insurance_id  INT AUTO_INCREMENT PRIMARY KEY,
    property_insurance_id INT,
    description           TEXT,
    FOREIGN KEY (property_insurance_id) REFERENCES property_insurance (property_insurance_id)
);
CREATE TABLE vessel_insurance
(
    vessel_insurance_id   INT AUTO_INCREMENT PRIMARY KEY,
    property_insurance_id INT,
    description           TEXT,
    FOREIGN KEY (property_insurance_id) REFERENCES property_insurance (property_insurance_id)
);
CREATE TABLE speciality_insurance
(
    speciality_insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    property_insurance_id   INT,
    description             TEXT,
    FOREIGN KEY (property_insurance_id) REFERENCES property_insurance (property_insurance_id)
);

CREATE TABLE other_property_insurance
(
    other_property_insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    property_insurance_id       INT,
    description                 TEXT,
    FOREIGN KEY (property_insurance_id) REFERENCES property_insurance (property_insurance_id)
);

CREATE TABLE disability_insurance
(
    disability_insurance_id          INT AUTO_INCREMENT PRIMARY KEY,
    insurance_type_categorization_id INT,
    description                      TEXT,
    FOREIGN KEY (insurance_type_categorization_id) REFERENCES insurance_type_categorization (insurance_type_categorization_id)
);
-- #5
CREATE TABLE group_disability_insurance
(
    group_disability_insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    disability_insurance_id       INT,
    description                   TEXT,
    FOREIGN KEY (disability_insurance_id) REFERENCES disability_insurance (disability_insurance_id)
);

CREATE TABLE individual_disability_insurance
(
    individual_disability_insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    disability_insurance_id            INT,
    description                        TEXT,
    FOREIGN KEY (disability_insurance_id) REFERENCES disability_insurance (disability_insurance_id)
);

CREATE TABLE group_health_insurance
(
    group_health_insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    health_insurance_id       INT,
    description               TEXT,
    FOREIGN KEY (health_insurance_id) REFERENCES health_insurance (health_insurance_id)
);

CREATE TABLE individual_health_insurance
(
    individual_health_insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    health_insurance_id            INT,
    description                    TEXT,
    FOREIGN KEY (health_insurance_id) REFERENCES health_insurance (health_insurance_id)
);
CREATE TABLE product_category_rollup (
    product_category_rollup_id INT AUTO_INCREMENT PRIMARY KEY,
    made_up_of INT,
    part_of INT,
    FOREIGN KEY (made_up_of) REFERENCES product_category(product_category_id),
    FOREIGN KEY (part_of) REFERENCES product_category(product_category_id)
);


INSERT INTO insurance_product (name, introduction_date, sales_discontinuation_date, support_discontinuation_date,
                               comment)
VALUES ('Insurance A', '2022-01-01', '2023-01-01', '2024-01-01', 'Comment A'),
       ('Insurance B', '2022-02-01', '2023-02-01', '2024-02-01', 'Comment B'),
       ('Insurance C', '2022-03-01', '2023-03-01', '2024-03-01', 'Comment C');

INSERT INTO product_category (description)
VALUES ('Category A'),
       ('Category B'),
       ('Category C');

INSERT INTO product_category_classification (from_date, thru_date, primary_flag, comment, product_id,
                                             product_category_id)
VALUES ('2022-01-01', '2023-01-01', true, 'Comment A', 1, 1),
       ('2022-02-01', '2023-02-01', true, 'Comment B', 2, 2),
       ('2022-03-01', '2023-03-01', true, 'Comment C', 3, 3);

-- sss
