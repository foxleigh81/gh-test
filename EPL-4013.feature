Feature: User views the summary page
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-4013
        Jira: GS-253

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'

    @EPL-4013-1
    Scenario Outline: User views the application summary page having previously entered an IA Only code, and a second IA Only code, and completing all sections
        And they resume the incomplete application where product name contains 'EPL-4013-1'
        And they navigate to the 'Type IA Several-Changes Multiple-Products Application-Summary' page
        And they will see a page header 'Application Summary'
        And they will see a sub header 'Product Details'
        And they will see a sub header 'Variation Details'
        And they will see a section header 'Product Details'
        And they will see a 'Procedure Type' row with value 'Group of IA Changes' and a change link leading to 'Variation Select Procedure Type'
        And they will see a 'Procedure Option' row with value 'Several changes to one product' and a change link leading to 'Variation Type IA Procedure Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Type IA Several-Changes One-Product Select-Product-1'
        And they will see a sub header '<Description>'
        And they will see a 'Code' row with value 'C.II.6(a)' and a replace link leading to 'Variation Type IA Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Description' row with value '<Description>'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IA Several-Changes One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IA Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IA Several-Changes One-Product Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a sub header '<Description>'
        And they will see a 'Code' row with value 'C.II.6(a)' and a replace link leading to 'Variation Type IA Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Description' row with value '<Description>'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IA Several-Changes One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IA Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IA Several-Changes One-Product Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IA Several-Changes Multiple-Products Add-Another-Variation-Code' page
        
    Examples: 
        | Sub Code | Description |
        | C.II.6(a) | Administrative information concerning the holder's representative |

    @EPL-4013-2
    Scenario Outline: User views the application summary page having previously entered an IA Only code, and a second Z Only code, and completing all sections
        And they resume the incomplete application where product name contains 'EPL-4013-2'
        And they navigate to the 'Type IA Several-Changes Multiple-Products Application-Summary' page
        And they will see a page header 'Application Summary'
        And they will see a sub header 'Product Details'
        And they will see a sub header 'Variation Details'
        And they will see a section header 'Product Details'
        And they will see a 'Procedure Type' row with value 'Group of IA Changes' and a change link leading to 'Variation Select Procedure Type'
        And they will see a 'Procedure Option' row with value 'Several changes to one product' and a change link leading to 'Variation Type IA Procedure Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Type IA Several-Changes One-Product Select-Product-1'
        And they will see a sub header '<Description>'
        And they will see a 'Code' row with value 'C.II.6(a)' and a replace link leading to 'Variation Type IA Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Description' row with value '<Description>'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IA Several-Changes One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IA Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IA Several-Changes One-Product Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a sub header '<Description2>'
        And they will see a 'Code' row with value 'B.I.a(z) and a replace link leading to 'Variation Type IA Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Description' row with value '<Description2>'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IA Several-Changes One-Product Implementation-Date'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation Type IA Several-Changes One-Product Article-5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IA Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IA Several-Changes One-Product Describe-Changes'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IA Several-Changes Multiple-Products Add-Another-Variation-Code' page
        
    Examples: 
        | Sub Code | Description | Description2 |
        | C.II.6(a) | Administrative information concerning the holder's representative |  |
        | B.I.c(z) |  | Change in container closure system of the active substance: Other variation |
        | B.I.d.1(z) |  | Other variation |