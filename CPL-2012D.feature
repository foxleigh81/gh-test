Feature: User checks their answers
    Description:
        Epic: Procedure C:  IA changes - 1 ch, sev un prds 
        Reference: CPL-2012D
        Jira: GS-199

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'

    @CPL-2012D-1
    @TestData::IA only
    Scenario: User checks their answers, having previously selected an 'IA Only' code and completing all sections
        And they resume the incomplete application where product name contains 'CPL-2012D-1'
        And they navigate to the 'Variation Type IA One-Change Multiple-Products Check-Your-Answers' page
        And they will see a page header 'Check your answers before submitting'
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Group of IA Changes' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to several unrelated products' and a change link leading to 'Variation Type IA Procedure Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Type IA One-Change Multiple-Products Select-Product-2'
        And they will see an 'Add another product' link
        And they will see a sub header 'IA Only variation details' with status 'completed'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IA One-Change Multiple-Products Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IA One-Change Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IA One-Change Multiple-Products Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Type IA One-Change Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Type IA One-Change Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Type IA One-Change Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Type IA One-Change Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Type IA One-Change Multiple-Products Declaration' page

    @CPL-2012D-2
    @TestData::Z Only
    Scenario: User checks their answers, having previously selected an 'Z Only' code and completing all sections
        And they resume the incomplete application where product name contains 'CPL-2012D-2'
        And they navigate to the 'Variation Type IA One-Change Multiple-Products Check-Your-Answers' page
        And they will see a page header 'Check your answers before submitting'
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Group of IA Changes' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to several unrelated products' and a change link leading to 'Variation Type IA Procedure Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Type IA One-Change Multiple-Products Select-Product-2'
        And they will see an 'Add another product' link
        And they will see a sub header 'Z Only variation details' with status 'completed'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IA One-Change Multiple-Products Implementation-Date'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation Single Multiple-Products Article 5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IA One-Change Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IA One-Change Multiple-Products Describe-Changes'
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Type IA One-Change Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Type IA One-Change Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Type IA One-Change Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Type IA One-Change Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Type IA One-Change Multiple-Products Declaration' page

    @CPL-2012D-3
    @TestData::IA only
    Scenario: User checks thier answers having not completed all sections
        And they resume the incomplete application where product name contains 'CPL-2012D-3'
        And they navigate to the 'Variation Type IA One-Change Multiple-Products Check-Your-Answers' page
        And they will see a page header 'Check your answers before submitting'
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Group of IA Changes' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'One change to several unrelated products' and a change link leading to 'Variation Type IA Procedure Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Type IA One-Change Multiple-Products Select-Product-2'
        And they will see an 'Add another product' link
        And they will see a sub header 'IA Only variation details' with status 'completed'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IA One-Change Multiple-Products Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IA One-Change Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IA One-Change Multiple-Products Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a section header 'Supporting Documents' with status 'Incomplete' and a change link leading to 'Variation Type IA One-Change Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Type IA One-Change Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Type IA One-Change Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Type IA One-Change Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Type IA One-Change Multiple-Products Check-Your-Answers' page
        And they will see a warning message stating 'You must complete all sections to continue'
        And they will not be able to continue

    @CPL-2012D-4
    @TestData::IA only
    Scenario: User replaces the variation
        And they resume the incomplete application where product name contains 'CPL-2012D-4'
        And they navigate to the 'Variation Type IA One-Change Multiple-Products Check-Your-Answers' page
        And they can see a 'Code' row with value 'IA.Only' and a replace link 
        When they select the 'Replace' link for 'IA.Only'
        Then they will be directed to the 'Variation Type IA One-Change Multiple-Products Enter-Variation-Code' page