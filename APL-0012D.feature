Feature: User checks their answers
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0012D
        Jira: GS-13

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'

    @APL-0012D-1
    @TestData::TDG-Variation-IB-Only-And-Common-Draft-Ready-For-Submission
    Scenario: User checks their answers, having previously selected an 'IB Only And Common' code and completing all sections
        And they resume the incomplete application where product name contains 'APL-0012D-1'
        And they navigate to the 'Variation Single One-Product Check-Your-Answers' page
        And they will see a page header 'Check Your Answers before submitting'
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Single' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to one product' and a change link leading to 'Variation Single One-Product Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Single One-Product Select-Product-1'
        And they will see a sub header 'IB Only And Common variation details' with status 'completed'
        And they will see a 'IB Only And Common Variation Code' row with value 'IB.Only.And.Common' and a replace link leading to 'Variation Single One-Product Confirm-Remove-Variation-Code'
        And they will see a 'Variation Type' row with value 'IB'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will not see a 'IB Only And Common Variation Implementation' row
        And they will not see a 'IB Only And Common Variation Article 5' row
        And they will see a section header 'Supporting-Documents' with status 'completed' and a change link leading to 'Variation Single One-Product Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Single One-Product Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Single One-Product Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Single One-Product Finance-Details'
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Single One-Product Declaration' page

    @APL-0012D-2
    @TestData::IAIB  IA variation type
    Scenario: User checks their answers, having previously selected an 'IAIB' code and 'IA' variation type, and completing all sections
        And they resume the incomplete application where product name contains 'APL-0012D-2'
        And they navigate to the 'Variation Single One-Product Check-Your-Answers' page
        And they will see a page header 'Check Your Answers before submitting'
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Single' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to one product' and a change link leading to 'Variation Single One-Product Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Single One-Product Select-Product-1'
        And they will see a sub header 'IAIB variation details' with status 'completed'
        And they will see a 'IAIB Variation Code' row with value 'IA.IB' and a replace link leading to 'Variation Single One-Product Confirm-Remove-Variation-Code'
        And they will see a 'Variation Type' row with value 'IA' and a change link leading to 'Variation Single One-Product Select-Variation-Type'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Single One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will not see a 'IAIB Variation Article-5' row
        And they will see a section header 'Supporting-Documents' with status 'completed' and a change link leading to 'Variation Single One-Product Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Single One-Product Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Single One-Product Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Single One-Product Finance-Details'
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Single One-Product Declaration' page

    @APL-0012D-3
    @TestData::IAIB  IB variation type
    Scenario: User checks their answers, having previously selected an 'IAIB' code and 'IB' variation type, and completing all sections
        And they resume the incomplete application where product name contains 'APL-0012D-3'
        And they navigate to the 'Variation Single One-Product Check-Your-Answers' page
        And they will see a page header 'Check Your Answers before submitting'
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Single' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to one product' and a change link leading to 'Variation Single One-Product Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Single One-Product Select-Product-1'
        And they will see a sub header 'IAIB variation details' with status 'completed'
        And they will see a 'IAIB Variation Code' row with value 'IA.IB' and a replace link leading to 'Variation Single One-Product Confirm-Remove-Variation-Code'
        And they will see a 'Variation Type' row with value 'IB' and a change link leading to 'Variation Single One-Product Select-Variation-Type'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Single One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will not see a 'IAIB Variation Article-5' row
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Single One-Product Upload-Dossier'
        And they will see a section header 'Supporting-Documents' with status 'completed' and a change link leading to 'Variation Single One-Product Supporting-Documents'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Single One-Product Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Single One-Product Finance-Details'
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Single One-Product Declaration' page

    @APL-0012D-4
    @TestData::Z Only  IA variation type
    Scenario: User checks their answers, having previously selected a 'Z Only' code and 'IA' variation type, and completing all sections
        And they resume the incomplete application where product name contains 'APL-0012D-4'
        And they navigate to the 'Variation Single One-Product Check-Your-Answers' page
        And they will see a page header 'Check Your Answers before submitting'
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Single' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to one product' and a change link leading to 'Variation Single One-Product Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Single One-Product Select-Product-1'
        And they will see a sub header 'Z Only And Common variation details' with status 'completed'
        And they will see a 'Z Only And Common Variation Code' row with value 'Z.Only.And.Common' and a replace link leading to 'Variation Single One-Product Confirm-Change-Variation-Code'
        And they will see a 'Variation Type' row with value 'IA' and a change link leading to 'Variation Single One-Product Select-Variation-Type'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Single One-Product Implementation-Date'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation Single One-Product Article 5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Single One-Product Upload-Dossier'
        And they will see a section header 'Supporting-Documents' with status 'completed' and a change link leading to 'Variation Single One-Product Supporting-Documents'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Single One-Product Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Single One-Product Finance-Details'
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Single One-Product Declaration' page

    @APL-0012D-5
    @TestData::Z Only  IB variation type
    Scenario: User checks their answers, having previously selected 'Z Only' and 'IB' variation type, and completing all sections
        And they resume the incomplete application where product name contains 'APL-0012D-5'
        And they navigate to the 'Variation Single One-Product Check-Your-Answers' page
        And they will see a page header 'Check Your Answers before submitting'
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Single' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to one product' and a change link leading to 'Variation Single One-Product Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Single One-Product Select-Product-1'
        And they will see a sub header 'Z Only And Common variation details' with status 'completed'
        And they will see a 'Z Only And Common Variation Code' row with value 'Z.Only.And.Common' and a replace link leading to 'Variation Single One-Product Confirm-Change-Variation-Code'
        And they will see a 'Variation Type' row with value 'IB' and a change link leading to 'Variation Single One-Product Select-Variation-Type'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation Single One-Product Article 5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will not see a 'Z Only And Common Variation Implementation-Date' row
        And they will see a section header 'Supporting-Documents' with status 'completed' and a change link leading to 'Variation Single One-Product Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Single One-Product Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Single One-Product Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Single One-Product Finance-Details'
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Single One-Product Declaration' page

    @APL-0012D-6
    @TestData::IA only
    Scenario: User checks their answers, having previously selected an 'IA Only' code and completing all sections
        And they resume the incomplete application where product name contains 'APL-0012D-6'
        And they navigate to the 'Variation Single One-Product Check-Your-Answers' page
        And they will see a page header 'Check Your Answers before submitting'
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Single' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to one product' and a change link leading to 'Variation Single One-Product Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Single One-Product Select-Product-1'
        And they will see a sub header 'IA Only variation details' with status 'completed'
        And they will see a 'IA Only Variation Code' row with value 'IA.Only' and a replace link leading to 'Variation Single One-Product Confirm-Remove-Variation-Code'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Single One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a section header 'Supporting-Documents' with status 'completed' and a change link leading to 'Variation Single One-Product Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Single One-Product Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Single One-Product Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Single One-Product Finance-Details'
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Single One-Product Declaration' page

    @APL-0012D-7
    @TestData::IA only
    Scenario: User checks thier answers having not completed all sections
        And they resume the incomplete application where product name contains 'APL-0012D-7'
        And they navigate to the 'Variation Single One-Product Check-Your-Answers' page
        And they will see a page header 'Check Your Answers before submitting'
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Single' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to one product' and a change link leading to 'Variation Single One-Product Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Single One-Product Select-Product-1'
        And they will see a sub header 'IA Only variation details' with status 'completed'
        And they will see a 'IA Only Variation Code' row with value 'IA.Only' and a replace link leading to 'Variation Single One-Product Confirm-Remove-Variation-Code'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Single One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Single One-Product Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a section header 'Supporting-Documents' with status 'Incomplete' and a change link leading to 'Variation Single One-Product Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Single One-Product Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Single One-Product Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Single One-Product Finance-Details'
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Single One-Product Check-Your-Answers' page
        And they will see a warning message stating 'You must complete all sections to continue'
        And they will not be able to continue

    @APL-0012D-8
    @TestData::IA only
    Scenario: User replaces the variation
        And they resume the incomplete application where product name contains 'APL-0012D-8'
        And they navigate to the 'Variation Single One-Product Check-Your-Answers' page
        And they can see a 'Code' row with value 'IA.Only' and a replace link 
        When they select the 'Replace' link for 'IA.Only'
        Then they will be directed to the 'Variation Single One-Product Enter-Variation-Code' page