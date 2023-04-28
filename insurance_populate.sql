use universalschema;

-- Insert data into the product_category table
INSERT INTO product_category (description)
VALUES ('Category 1'), ('Category 2'), ('Category 3');

-- Insert data into the insurance_type_categorization table
INSERT INTO insurance_type_categorization (product_category_id, description)
VALUES (1, 'Insurance Type 1'), (2, 'Insurance Type 2');

-- Insert data into the individual_or_group table
INSERT INTO individual_or_group (product_category_id, description)
VALUES (1, 'Individual'), (2, 'Group');

-- Insert data into the industry_target_categorization table
INSERT INTO industry_target_categorization (product_category_id, description)
VALUES (1, 'Target Industry 1'), (2, 'Target Industry 2');







-- Insert data into the property_insurance table
INSERT INTO property_insurance (insurance_type_categorization_id, description)
VALUES (1, 'Property Insurance 1'), (2, 'Property Insurance 2');

-- Insert data into the life_insurance table
INSERT INTO life_insurance (insurance_type_categorization_id, description)
VALUES (1, 'Life Insurance 1'), (2, 'Life Insurance 2');

-- Insert data into the casuality_insurance table
INSERT INTO casuality_insurance (insurance_type_categorization_id, description)
VALUES (1, 'Casuality Insurance 1'), (2, 'Casuality Insurance 2');

-- Insert data into the health_insurance table
INSERT INTO health_insurance (insurance_type_categorization_id, description)
VALUES (1, 'Health Insurance 1'), (2, 'Health Insurance 2');

-- Insert data into the accident_insurance table
INSERT INTO accident_insurance (casuality_insurance_id, description)
VALUES (1, 'Accident Insurance 1'), (2, 'Accident Insurance 2');

-- Insert data into the natural_disaster_insurance table
INSERT INTO natural_disaster_insurance (casuality_insurance_id, description)
VALUES (1, 'Natural Disaster Insurance 1'), (2, 'Natural Disaster Insurance 2');

-- Insert data into the term_life_insurance table
INSERT INTO term_life_insurance (life_insurance_id, description)
VALUES (1, 'Term Life Insurance 1'), (2, 'Term Life Insurance 2');

-- Insert data into the whole_life table
INSERT INTO whole_life (life_insurance_id, description)
VALUES (1, 'Whole Life Insurance 1'), (2, 'Whole Life Insurance 2');







-- Insert data into the universal_life_insurance table
INSERT INTO universal_life_insurance (life_insurance_id, description)
VALUES (1, 'Universal Life Insurance 1'), (2, 'Universal Life Insurance 2');

-- Insert data into the home_owners_insurance table
INSERT INTO home_owners_insurance (property_insurance_id, description)
VALUES (1, 'Home Owners Insurance 1'), (2, 'Home Owners Insurance 2');

-- Insert data into the vehicle_insurance table
INSERT INTO vehicle_insurance (property_insurance_id, description)
VALUES (1, 'Vehicle Insurance 1'), (2, 'Vehicle Insurance 2');

-- Insert data into the vessel_insurance table
INSERT INTO vessel_insurance (property_insurance_id, description)
VALUES (1, 'Vessel Insurance 1'), (2, 'Vessel Insurance 2');


-- Insert data into the speciality_insurance table
INSERT INTO speciality_insurance (property_insurance_id, description)
VALUES (1, 'Speciality Insurance 1'), (2, 'Speciality Insurance 2');

-- Insert data into the other_property_insurance table
INSERT INTO other_property_insurance (property_insurance_id, description)
VALUES (1, 'Other Property Insurance 1'), (2, 'Other Property Insurance 2');

-- Insert data into the disability_insurance table
INSERT INTO disability_insurance (insurance_type_categorization_id, description)
VALUES (1, 'Disability Insurance 1'), (2, 'Disability Insurance 2');

-- Insert data into the group_disability_insurance table
INSERT INTO group_disability_insurance (disability_insurance_id, description)
VALUES (1, 'Group Disability Insurance 1'), (2, 'Group Disability Insurance 2');




-- Insert data into the individual_disability_insurance table
INSERT INTO individual_disability_insurance (disability_insurance_id, description)
VALUES (1, 'Individual Disability Insurance 1'), (2, 'Individual Disability Insurance 2');

-- Insert data into the group_health_insurance table
INSERT INTO group_health_insurance (health_insurance_id, description)
VALUES (1, 'Group Health Insurance 1'), (2, 'Group Health Insurance 2');

-- Insert data into the individual_health_insurance table
INSERT INTO individual_health_insurance (health_insurance_id, description)
VALUES (1, 'Individual Health Insurance 1'), (2, 'Individual Health Insurance 2');

-- Insert data into the product_category_rollup table
INSERT INTO product_category_rollup (made_up_of, part_of)
VALUES (1, 2), (2, 3);

