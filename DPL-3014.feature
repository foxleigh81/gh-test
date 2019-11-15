Feature: User who has entered a valid code from Data Table IA Only and a second variation  code from Data Table IA Only views the application summary page
    Description:
        Reference: DPL-3014
    
    Background: Given the user has completed the PL-3013 steps

    @DPL-3014
    Scenario Outline: User who has entered a valid code from Data Table IA Only and a second variation  code from Data Table IA Only is directed to the Application Summary page
        Given the user has been directed to the 'Application Summary' page
        And they have entered a value from Data Table '<Sub Code>'
        When page 'Application Summary' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Application summary'
        And a table with a row with the list item 'Products' and the 'selected product' displayed and a change link
        And a table with a row with the list item 'Procedure Type' and the 'selected prcedure type' displayed 
        And a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed 
        And a table with a row containing the list item 'Variation 1' and the '<Sub Code>' displayed and the 'variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation date' displayed 
        And a table with a row with the list item 'Proposed Change' and the 'Present and Proposed text' displayed and a change link
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed and a change link
        And they will see a 'Continue' option
        And they will see a save and exit link 
        
    Examples: 
        | Sub Code A | Sub Code B |
        | C.II.6(a) | C.II.6(a) |

    @DPL-3014-1
    Scenario: User selects 'Continue'
        Given the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they will be directed to the 'Enter Second Variation Code' page

    @DPL-3014-2
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @DPL-3014-3
    Scenario: User selects change link for implementation date
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Implementation Date'
        When they select 'Implementation Date change link'
        Then they will be directed to the 'Implementation Date' page

    @DPL-3014-4
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they will be directed to the 'Describe changes' page

    @DPL-3014-5
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page