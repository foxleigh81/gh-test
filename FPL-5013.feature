Feature: User views the summary page
    Description:
        Epic: Procedure F: IB/II - sev ch, 1  prd 
        Reference: FPL-5013
        Jira: GS-532

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'

    @FPL-5013-1
    @TestData::IA Only C.II.6(a), IA Only C.II.6(a)
    Scenario: User views the application summary page having previously entered an IA Only code, and a second IA Only code, and completing all sections
        And they resume the incomplete application where product name contains 'FPL-5013-1'
        And they navigate to the 'Variation Type IB/II Several-Changes One-Product Application-Summary' page
        And they will see a page header 'Application Summary'
        And they will see a section header 'Product Details'
        And they will see a 'Procedure Type' row with value 'Group of IB/II Changes' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'Several changes to one product' and a change link leading to 'Variation Type IB/II Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Select-Product-1'
        And they will see a sub header 'Administrative information concerning the holders representative'
        And they will see a 'Code' row with value 'C.II.6(a)' and a replace link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Description' row with value 'Administrative information concerning the holders representative'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a sub header 'Administrative information concerning the holders representative'
        And they will see a 'Code' row with value 'C.II.6(a)' and a replace link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Description' row with value 'Administrative information concerning the holders representative'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Type IB/II Several-Changes One-Product Add-Another-Variation-Code' page

    @FPL-5013-2
    @TestData::IA Only C.II.6(a), Z Only B.I.a(z) var type IB
    Scenario: User views the application summary page having previously entered an IA Only code, and a second Z Only code, IB variation type, and completing all sections
        And they resume the incomplete application where product name contains 'FPL-5013-2'
        And they navigate to the 'Type IA Several-Changes One-Product Application-Summary' page
        And they will see a page header 'Application Summary'
        And they will see a section header 'Product Details'
        And they will see a 'Procedure Type' row with value 'Group of IB/II Changes' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'Several changes to one product' and a change link leading to 'Variation Type IB/II Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Select-Product-1'
        And they will see a sub header 'Administrative information concerning the holders representative'
        And they will see a 'Code' row with value 'C.II.6(a)' and a replace link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Description' row with value 'Administrative information concerning the holders representative'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a sub header 'Administrative information concerning the holders representative'
        And they will see a 'Code' row with value 'B.I.a(z)' and a replace link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Description' row with value 'Administrative information concerning the holders representative'
        And they will see a 'Variation Type' row with value 'IB'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Article-5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will not see a 'Z Only Variation Implementation-Date' row
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Type IB/II Several-Changes One-Product Add-Another-Variation-Code' page