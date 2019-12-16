Feature: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table Z Only and has selected variation type IA  describes the proposed changes
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5047

    Background: Given the user has completed the PL-5046 steps

    @FPL-5047
    Scenario Outline: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table Z Only and has selected variation type IA is directed to the Application Summary page
        Given the user has been directed to the 'Application Summary' page
        And they have entered a first variation code from Data Table '<IA Only>'
        And they have entered a second variation code from Data Table '<Z Only>'
        And they have selected Variation Type 'IA' 
        When page 'Application Summary' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Application summary'
        And a table with a row with the list item 'Products' and the 'selected product' displayed and a change link
        And a table with a row with the list item 'Procedure Type' and the 'selected procedure type' displayed 
        And a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed 
        And a table with a row containing the list item 'Variation 1' and the '<Sub Code A>' displayed and the 'variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and the '<IA>' displayed 
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation date' displayed and a change link
        And a table with a row with the list item 'Present' and the 'Present text' displayed and a change link
        And a table with a row with the list item 'Proposed change' and the 'Proposed change text' displayed and a change link
        And a table with a row containing the list item 'Variation 2' and the '<Sub Code B>' displayed and the 'variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and the '<IA>' displayed 
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation date' displayed and a change link
        And a table with a row with the list item 'Article 5' and the 'the Article 5 answer' displayed and a change link
        And a table with a row with the list item 'Present' and the 'Present text' displayed and a change link
        And a table with a row with the list item 'Proposed change' and the 'Proposed change text' displayed and a change link
        And they will see a 'Continue' option
        And they will see a save and exit link 
        
    Examples: 
        | Sub Code A | Sub Code B | Group A | Group B |
        | C.II.6(a) | A(z) | IA Only | Z Only |

    @FPL-5047-1
    Scenario: User selects 'Continue'
        Given the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they will be directed to the 'Add Another Variation Code' page

    @FPL-5047-2
    Scenario: User selects Remove variation link for Variation 1
        Given the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @FPL-5047-3
    Scenario: User selects Remove variation link for Variation 2
        Given the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @FPL-5047-4
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @FPL-5047-5
    Scenario: User selects change link for Article 5
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Article 5'
        When they select 'Article 5 change link'
        Then they will be directed to the 'Article 5' page

    @FPL-5047-6
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they will be directed to the 'Describe changes' page

    @FPL-5047-7
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Application Summary' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page