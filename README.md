# universal-industry-database-models
A collection of database models based on the book 
*"The Data Model Resource Book, Revised Edition, Volume 2, A Library of Universal Data Models by Industry Types"*
by Len Silverston *Foreword by John Zachman*. 

## List of topics
* Professional Services
  * Temporary Placement Firms
  * Accounting Firms
  * Law Firms
  * Computer Consulting Firms
* Financial Services Companies
  * Banks
  * Credit Unions
  * Brokerage Services
  * Securities Firms
  * Insurance Companies
* Manufacturing Organizations
* Telecommunications
* Health Care
* Travel
* E-Commerce 

## Professional Services
1.  service_entry_billing 
2.  price_component 

## Financial Services Companies
1. `party`
2. `party_type`
3. party_account_media 
4. party_account_media_status 
5. asset_role 
6. account_role 
7. account_transaction_relationship 
8. account_transaction_usage 
9. asset
10. agreement_item
11. account_transaction
12. account_transaction_task
13. agreement
14. financial_agreement (subtype of agreement)
15. account
16. account_notification
17. agreement_status
18. account_product
19. account_status
20. account_relationship
21. account_notification
22. work_effort
23. notification_task (subtype of work_effort)
24. risk_analysis (subtype of work_effort)
25. functional_setting_applicability
26. financial_product
27. product_category_classification
28. market_segment_target
29. product_feature_applicability
30. product_category_feature_applicability
31. product_category
32. analysis_outcome
33. analysis_parameter
34. product_cat_feat_func_applicability
35. product_feature
36. financial_product_rule
37. functional_settings
38. account_segment_target
39. party_segment_target
40. product_category_rollup
41. plan_product
42. plan_status
43. plan
44. plan_role
45. plan_objective
46. party_objective
47. party_need
48. 
49. need_type
50. agreement_term
51. regulation_requirement
52. financial_regulation
53. plan_need
54. party_role
55. financial_institution (subtype of party)
56. regulatory_agency (subtype of party)
57. customer
58. party_relationship
59. party_relationship_type
60. party_role_type

### Insurance Companies

1. `party`
2. `party_type`
3. adjudicator_factor 
4. adjudicator_rule 
5. claim_settlement 
6. claim_settlement_amount 
7. claim_status 
8. appraisal 
9. payment 
10. agreement_role 
11. incident_claim_item 
12. claim 
13. claim_resubmission 
14. policy_premium_adjustment 
15. agreement 
16. insurance_policy 
17. incident 
18. claim_item 
19. premium_schedule 
20. incident_property_damage 
21. agreement_item 
22. policy_item 
23. policy_item_premium 
24. insurance_factor 
25.  
26. geographic_boundary 
27. risk_level_type 
28. period_type 
29. policy_item_premium_billing 
30. insurance_rate 
31. actuarial_analysis 
32. work_effort 
33. risk_analysis 
34. invoice_item 
35. insured_target 
36. insured_asset 
37. analysis_parameter 
38. insured_asset_type 
39. product_feature_coverage 
40. insurance_product 
41. coverage_level 
42. coverage_level_basis 
43. product_feature 
44. coverage_availability 
45. coverage_type_composition 
46. coverage_interaction 
47. product_category_classification 
48. product_category_rollup 
49. product_rule 
50. product_category 
51. coverage_category 
52. quote_item 
53. application_item 
54. party_role 
55. insured_party 
56. insurance_provider 
57. distribution_channel 
58. party_relationship 
59. party_relationship_type 
60. party_role_type
61. application_status 
62. application_role 
63. application 
64. quote 
65. quote_role 

