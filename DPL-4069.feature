Feature: User who has entered a valid code from Data Table Z Only views the Application Summary page
    Description:
        Reference: DPL-4069

    Background: Given the user has completed the PL-4068 steps

    @DPL-4069
    Scenario Outline: User who has entered a valid code from Data Table Z Only is directed to the Application Summary page
        Given the user has been directed to the 'Application Summary' page
        And they have entered a value from Data Table '<Sub Code>'
        When page 'Application Summary' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Application summary'
        And a table with a row with the list item 'Products' and the 'selected product' displayed and a change link
        And a table with a row with the list item 'Procedure Type' and the 'selected procedure type' displayed 
        And a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed 
        And a table with a row containing the list item 'Variation 1' and the '<Sub Code>' displayed and the 'variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and the 'selected variation type' displayed 
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation date' displayed and a change link
        And a table with a row with the list item 'Article 5' and the 'Article 5 answer' displayed and a change link
        And a table with a row with the list item 'Present' and the 'Present text' displayed and a change link
        And a table with a row with the list item 'Proposed Change' and the 'Proposed change text' displayed and a change link
        And they will see a 'Continue' option
        And they will see a save and exit link 
        
    Examples: 
        | Sub Code | Description | Page |
        | A(z) | Other Variation | Variation Type Page 1 |
        | B.I.a.1(z) | Other variation | Variation Type Page 1 |
        | B.I.a.2(z) | Other variation | Variation Type Page 1 |
        | B.I.a.3(z) | Other variation | Variation Type Page 1 |
        | B.I.a.4(z) | Other variation | Variation Type Page 1 |
        | B.I.a.5(z) | Other variation | Variation Type Page 1 |
        | B.I.a(z) | Change in the manufacture of the active substance: Other variation | Variation Type Page 1 |
        | B.I.b.1(z) | Other variation | Variation Type Page 1 |
        | B.I.b.2(z) | Other variation | Variation Type Page 1 |
        | B.I.b(z) | Change in control of the active substance | Variation Type Page 1 |
        | B.I.c.1(z) | Other variation | Variation Type Page 1 |
        | B.I.c.2(z) | Other variation | Variation Type Page 1 |
        | B.I.c.3(z) | Other variation | Variation Type Page 1 |
        | B.I.c(z) | Change in container closure system of the active substance: Other variation | Variation Type Page 1 |
        | B.I.d.1(z) | Other variation | Variation Type Page 1 |
        | B.I.d(z) | Stability: Other variation | Variation Type Page 1 |
        | B.I.e.1(z) | Other variation | Variation Type Page 1 |
        | B.I.e.2(z) | Other variation | Variation Type Page 1 |
        | B.I.e.3(z) | Other variation | Variation Type Page 1 |
        | B.I.e.4(z) | Other variation | Variation Type Page 1 |
        | B.I.e.5(z) | Other variation | Variation Type Page 1 |
        | B.I.e(z) | Design space and post approval change management protocols. Other Variation | Variation Type Page 1 |
        | B.I(z) | Active substance: Other variation | Variation Type Page 1 |
        | B.II.a.1(z) | Other variation | Variation Type Page 1 |
        | B.II.a.2(z) | Other variation | Variation Type Page 1 |
        | B.II.a.3(z) | Other variation | Variation Type Page 1 |
        | B.II.a.4(z) | Other variation | Variation Type Page 1 |
        | B.II.a.5(z) | Other variation | Variation Type Page 1 |
        | B.II.a.6(z) | Other variation | Variation Type Page 1 |
        | B.II.a(z) | Change in description and composition of the final product: Other variation | Variation Type Page 1 |
        | B.II.b.1(z) | Other variation | Variation Type Page 1 |
        | B.II.b.2(z) | Other variation | Variation Type Page 1 |
        | B.II.b.3(z) | Other variation | Variation Type Page 1 |
        | B.II.b.4(z) | Other variation | Variation Type Page 1 |
        | B.II.b.5(z) | Other variation | Variation Type Page 1 |
        | B.II.b(z) | Change in the manufacture of the finished product | Variation Type Page 1 |
        | B.II.c.1(z) | Other variation | Variation Type Page 1 |
        | B.II.c.2(z) | Other variation | Variation Type Page 1 |
        | B.II.c.3(z) | Other variation | Variation Type Page 1 |
        | B.II.c.4(z) | Other variation | Variation Type Page 1 |
        | B.II.c(z) | Change in control of excipients in the finished product | Variation Type Page 1 |
        | B.II.d.1(z) | Other variation | Variation Type Page 1 |
        | B.II.d.2(z) | Other variation | Variation Type Page 1 |
        | B.II.d.3(z) | Other variation | Variation Type Page 1 |
        | B.II.d(z) | Change in control of the finished product: Other variation | Variation Type Page 1 |
        | B.II.e.1(z) | Other variation | Variation Type Page 1 |
        | B.II.e.2(z) | Other variation | Variation Type Page 1 |
        | B.II.e.3(z) | Other variation | Variation Type Page 1 |
        | B.II.e.4(z) | Other variation | Variation Type Page 1 |
        | B.II.e.5(z) | Other variation | Variation Type Page 1 |
        | B.II.e.6(z) | Other variation | Variation Type Page 1 |
        | B.II.e.7(z) | Other variation | Variation Type Page 1 |
        | B.II.e(z) | Change in the container closure system of the finished product: Other variation | Variation Type Page 1 |
        | B.II.f.1(z) | Other variation | Variation Type Page 1 |
        | B.II.f(z) | Stability: Other variation | Variation Type Page 1 |
        | B.II.g.1(z) | Other variation | Variation Type Page 1 |
        | B.II.g.2(z) | Other variation | Variation Type Page 1 |
        | B.II.g.3(z) | Other variation | Variation Type Page 1 |
        | B.II.g.4(z) | Other variation | Variation Type Page 1 |
        | B.II.g.5(z) | Other variation | Variation Type Page 1 |
        | B.II.g(z) | Design space and post approval change management protocols: Other variation | Variation Type Page 1 |
        | B.II.h.1(z) | Other variation | Variation Type Page 1 |
        | B.II.h(z) | Adventitious agents safety: Other variation | Variation Type Page 1 |
        | B.II(z) | Finished product: Other variation | Variation Type Page 1 |
        | B.III.1(z) | Other Variation | Variation Type Page 1 |
        | B.III.2(z) | Other Variation | Variation Type Page 1 |
        | B.III(z) | CEP/TSE/Monographs: Other variation | Variation Type Page 1 |
        | B.IV.1(z) | Other variation | Variation Type Page 1 |
        | B.IV.2(z) | Other variation | Variation Type Page 1 |
        | B.IV.3(z) | Other variation | Variation Type Page 1 |
        | B.IV(z) | Change in medical devices: Other Variation | Variation Type Page 1 |
        | B.V.a.1(z) | Other variation | Variation Type Page 1 |
        | B.V.a.2(z) | Other variation | Variation Type Page 1 |
        | B.V.b.1(z) | Other variation | Variation Type Page 1 |
        | B(z) | Other variation | Variation Type Page 1 |
        | C.I.1(z) | Other variation | Variation Type Page 1 |
        | C.I.2(z) | Other variation | Variation Type Page 1 |
        | C.I.4(z) | Other variation | Variation Type Page 1 |
        | C.I.6(z) | Other variation | Variation Type Page 1 |
        | C.I.7(z) | Other variation | Variation Type Page 1 |
        | C.I.9(z) | Other variation | Variation Type Page 1 |
        | C.I.11(z) | Other variation | Variation Type Page 1 |
        | C.I.12(z) | Other variation | Variation Type Page 1 |
        | C.I.13(z) | Other variation | Variation Type Page 1 |
        | C.I(z) | Other variation | Variation Type Page 1 |
        | C.I(z).1 | Changes (Safety/Efficacy) to human and veterinary medicinal products | Variation Type Page 1 |
        | C.II(z) | Changes to Veterinary Medicinal Products: Other Variation | Variation Type Page 1 |

    @DPL-4069-1
    Scenario: User selects 'Continue'
        Given the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they will be directed to the 'Enter Second Variation Code' page

    @DPL-4069-2
    Scenario: User selects Remove variation link
        Given the user is on the 'Application Summary' page
        When they select 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @DPL-4069-3
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @DPL-4069-4
    Scenario: User selects change link for Article 5
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Article 5'
        When they select 'Article 5 change link'
        Then they will be directed to the 'Article 5' page

    @DPL-4069-5
    Scenario: User selects change link for implementation date
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Implementation Date'
        When they select 'Implementation Date change link'
        Then they will be directed to the 'Implementation Date' page

    @DPL-4069-6
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they will be directed to the 'Describe changes' page

    @DPL-4069-7
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page