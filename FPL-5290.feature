Feature: User who has entered a valid  code from Data Table Z Only and has selected variation type IB or II, and a second variation  code from Data Table IB Only, or II Only, or No Variations, or Z Special views the application summary page
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5290

    Background: Given the user has completed the PL-5289 steps

    @FPL-5290
    Scenario Outline: User who has entered a valid  code from Data Table Z Only and has selected variation type IB or II, and a second variation  code from Data Table IB Only, or II Only, or No Variations, or Z Special is directed to the Application Summary page
        Given the user has been directed to the 'Application Summary' page
        And they have entered a first variation code from Data Table '<Group B>'
        And they have selected Variation Type '<Var Type B>' 
        And they have entered a second variation code from Data Table '<Group A>'
        And they have selected Variation Type '<Var Type A>' 
        When page 'Application Summary' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Application summary'
        And a table with a row with the list item 'Products' and the 'selected product' displayed and a change link
        And a table with a row with the list item 'Procedure Type' and the 'selected procedure type' displayed 
        And a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed 
        And a table with a row containing the list item 'Variation 1' and the '<Sub Code B>' displayed and the 'variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and the '<Var Type B>' displayed 
        And a table with a row with the list item 'Article 5' and the 'the Article 5 answer' displayed and a change link
        And a table with a row with the list item 'Present' and the 'Present text' displayed and a change link
        And a table with a row with the list item 'Proposed change' and the 'Proposed change text' displayed and a change link
        And a table with a row containing the list item 'Variation 2' and the '<Sub Code A>' displayed and the 'variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and the '<Var Type A>' displayed 
        And a table with a row with the list item 'Present' and the 'Present text' displayed and a change link
        And a table with a row with the list item 'Proposed change' and the 'Proposed change text' displayed and a change link
        And they will see a 'Continue' option
        And they will see a save and exit link 
        
    Examples: 
        | Sub Code A | Group A | Var Type A | Sub Code B | Group B | Var Type B |
        | B.I.a.1(h) | IB Only | IB | B.I.a.1(z) | Z Only | IB |
        | B.I.a.1(h) | IB Only | IB | B.I.a.1(z) | Z Only | II |
        | B.I.a.1(b) | II Only | II | B.I.a.1(z) | Z Only | IB |
        | B.I.a.1(b) | II Only | II | B.I.a.1(z) | Z Only | II |
        | 1(a) | No Variations | N/a | B.I.a.1(z) | Z Only | IB |
        | 1(a) | No Variations | N/a | B.I.a.1(z) | Z Only | II |
        | A(z).1 | Z Special | N/a | B.I.a.1(z) | Z Only | IB |
        | A(z).1 | Z Special | N/a | B.I.a.1(z) | Z Only | II |

    @FPL-5290-1
    Scenario: User selects 'Continue'
        Given the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they will be directed to the 'Add Another Variation Code' page

    @FPL-5290-2
    Scenario: User selects Remove variation link for Variation 1
        Given the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @FPL-5290-3
    Scenario: User selects Remove variation link for Variation 2
        Given the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @FPL-5290-4
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @FPL-5290-5
    Scenario: User selects change link for implementation date
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Implementation Date'
        When they select 'Implementation Date change link'
        Then they will be directed to the 'Implementation Date' page

    @FPL-5290-6
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they will be directed to the 'Describe changes' page

    @FPL-5290-7
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Application Summary' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page