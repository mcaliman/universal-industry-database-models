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
48. need_type
49. agreement_term
50. regulation_requirement
51. financial_regulation
52. plan_need
53. party_role
54. financial_institution (subtype of party)
55. regulatory_agency (subtype of party)
56. customer
57. party_relationship
58. party_relationship_type
59. party_role_type

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
25. geographic_boundary 
26. risk_level_type 
27. period_type 
28. policy_item_premium_billing 
29. insurance_rate 
30. actuarial_analysis 
31. work_effort 
32. risk_analysis 
33. invoice_item 
34. insured_target 
35. insured_asset 
36. analysis_parameter 
37. insured_asset_type 
38. product_feature_coverage 
39. insurance_product 
40. coverage_level 
41. coverage_level_basis 
42. product_feature 
43. coverage_availability 
44. coverage_type_composition 
45. coverage_interaction 
46. product_category_classification 
47. product_category_rollup 
48. product_rule 
49. product_category 
50. coverage_category 
51. quote_item 
52. application_item 
53. party_role 
54. insured_party 
55. insurance_provider 
56. distribution_channel 
57. party_relationship 
58. party_relationship_type 
59. party_role_type
60. application_status 
61. application_role 
62. application 
63. quote 
64. quote_role 

