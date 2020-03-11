Feature: User checks their answers
    Description:
        Epic: Procedure H: Workshare 1 ch, sev un prds
        Reference: HPL-7012D

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'

    @HPL-7012D-1
    @TestData::TDG-Variation-IB-Only-And-Common-Draft-Ready-For-Submission
    Scenario: User checks their answers, having previously selected an 'IB Only And Common' code and completing all sections
        And they resume the incomplete application where product name contains 'HPL-7012D-1'
        And they navigate to the 'Variation Workshare One-Change Multiple-Products Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Workshare' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to several unrelated products' and a change link leading to 'Variation Workshare Multiple-Products Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Workshare Multiple-Products Select-Product-2'
        And they will see a section header 'IB Only And Common variation details' with status 'completed'
        And they will see a 'IB Only And Common Variation Code' row with value 'IB.Only.And.Common' and a change link leading to 'Variation Workshare One-Change Multiple-Products Confirm-Remove-Variation-Code'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will not see a 'IB Only And Common Variation Implementation' row
        And they will not see a 'IB Only And Common Variation Article 5' row
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare One-Change Multiple-Products Declaration' page

    @HPL-7012D-2
    @TestData::IAIB  IA variation type
    Scenario: User checks their answers, having previously selected an 'IAIB' code and 'IA' variation type, and completing all sections
        And they resume the incomplete application where product name contains 'HPL-7012D-2'
        And they navigate to the 'Variation Workshare One-Change Multiple-Products Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Workshare' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to several unrelated products' and a change link leading to 'Variation Workshare Multiple-Products Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Workshare Multiple-Products Select-Product-2'
        And they will see a section header 'IAIB variation details' with status 'completed'
        And they will see a 'IAIB Variation Code' row with value 'IA.IB' and a change link leading to 'Variation Workshare One-Change Multiple-Products Confirm-Remove-Variation-Code'
        And they will see a 'Variation Type' row with value 'IA' and a change link leading to 'Variation Workshare One-Change Multiple-ProductsSelect-Variation-Type'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Workshare One-Change Multiple-Products Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will not see a 'IAIB Variation Article-5' row
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare One-Change Multiple-Products Declaration' page

    @HPL-7012D-3
    @TestData::IAIB  IB variation type
    Scenario: User checks their answers, having previously selected an 'IAIB' code and 'IB' variation type, and completing all sections
        And they resume the incomplete application where product name contains 'HPL-7012D-3'
        And they navigate to the 'Variation Workshare One-Change Multiple-Products Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Workshare' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to several unrelated products' and a change link leading to 'Variation Workshare Multiple-Products Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Workshare Multiple-Products Select-Product-2'
        And they will see a section header 'IAIB variation details' with status 'completed'
        And they will see a 'IAIB Variation Code' row with value 'IA.IB' and a change link leading to 'Variation Workshare One-Change Multiple-Products Confirm-Remove-Variation-Code'
        And they will see a 'Variation Type' row with value 'IA' and a change link leading to 'Variation Workshare One-Change Multiple-Products Select-Variation-Type'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Workshare One-Change Multiple-Products Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will not see a 'IAIB Variation Article-5' row
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare One-Change Multiple-Products Declaration' page

    @HPL-7012D-4
    @TestData::Z Only  IA variation type
    Scenario: User checks their answers, having previously selected a 'Z Only' code and 'IA' variation type, and completing all sections
        And they resume the incomplete application where product name contains 'HPL-7012D-4'
        And they navigate to the 'Variation Workshare One-Change Multiple-Products Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Workshare' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to several unrelated products' and a change link leading to 'Variation Workshare Multiple-Products Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Workshare Multiple-Products Select-Product-2'
        And they will see a section header 'Z Only And Common variation details' with status 'completed'
        And they will see a 'Z Only And Common Variation Code' row with value 'Z.Only.And.Common' and a change link leading to 'Variation Workshare One-Change Multiple-Products Confirm-Change-Variation-Code'
        And they will see a 'Variation Type' row with value 'IA' and a change link leading to 'Variation Workshare One-Change Multiple-Products Select-Variation-Type'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Workshare One-Change Multiple-Products Implementation-Date'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation Workshare One-Change Multiple-Products Article 5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare One-Change Multiple-Products Declaration' page

    @HPL-7012D-5
    @TestData::Z Only  IB variation type
    Scenario: User checks their answers, having previously selected 'Z Only' and 'IB' variation type, and completing all sections
        And they resume the incomplete application where product name contains 'HPL-7012D-5'
        And they navigate to the 'Variation Workshare One-Change Multiple-Products Check Your Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Workshare' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to several unrelated products' and a change link leading to 'Variation Workshare Multiple-Products Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Workshare Multiple-Products Select-Product-2'
        And they will see a section header 'Z Only And Common variation details' with status 'completed'
        And they will see a 'Z Only And Common Variation Code' row with value 'Z.Only.And.Common' and a change link leading to 'Variation Workshare One-Change Multiple-Products Confirm-Change-Variation-Code'
        And they will see a 'Variation Type' row with value 'IB' and a change link leading to 'Variation Workshare One-Change Multiple-Products Select-Variation-Type'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation Workshare One-Change Multiple-Products Article 5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will not see a 'Z Only And Common Variation Implementation-Date' row
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare One-Change Multiple-Products Declaration' page

    @HPL-7012D-6
    @TestData::IA only
    Scenario: User checks their answers, having previously selected an 'IA Only' code and completing all sections
        And they resume the incomplete application where product name contains 'HPL-7012D-6'
        And they navigate to the 'Variation Workshare One-Change Multiple-Products Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Workshare' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to several unrelated products' and a change link leading to 'Variation Workshare Multiple-Products Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Workshare Multiple-Products Select-Product-2'
        And they will see a section header 'IA Only variation details' with status 'completed'
        And they will see a 'IA Only Variation Code' row with value 'IA.Only' and a change link leading to 'Variation Workshare One-Change Multiple-Products Confirm-Remove-Variation-Code'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Workshare One-Change Multiple-Products Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare One-Change Multiple-Products Declaration' page

    @HPL-7012D-7
    @TestData::IA only
    Scenario: User checks thier answers having not completed all sections
        And they resume the incomplete application where product name contains 'HPL-7012D-7'
        And they navigate to the 'Variation Workshare One-Change Multiple-Products Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Workshare' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to several unrelated products' and a change link leading to 'Variation Workshare Multiple-Products Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Workshare Multiple-Products Select-Product-2'
        And they will see a section header 'IA Only variation details' with status 'completed'
        And they will see a 'IA Only Variation Code' row with value 'IA.Only' and a change link leading to 'Variation Workshare One-Change Multiple-Products Confirm-Remove-Variation-Code'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Workshare One-Change Multiple-Products Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare One-Change Multiple-Products Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a section header 'Supporting Documents' with status 'Incomplete' and a change link leading to 'Variation Workshare One-Change Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Workshare One-Change Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare One-Change Multiple-Products Check-Your-Answers' page
        And they will see a warning message stating 'You must complete all sections to continue'
        And they will not be able to continue