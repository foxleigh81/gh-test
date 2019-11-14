Feature: User who has enterered a valid code from Data Table IA Only views the Application Summary page
    Description:
        Reference: DPL-3010
    
    Background: Given the user has completed the PL-3009 steps

    @DPL-3010
    Scenario Outline: User directed to the Application Summary page
        Given the user has been directed to the 'Application Summary 1' page
        And they have entered a value from Data Table '<Sub Code>'
        When page 'Application Summary 1' loads
        Then they will see a 'Back' link
        And they will see a 'Sign out' link
        And they will see a sub header 'Vary a marketing authorisation'
        And they will see a page header 'Application summary'
        And they will see a table with a row with the list item 'Products' and the 'selected product' displayed and a change link
        And they will see a table with a row with the list item 'Procedure Type' and the 'selected prcedure type' displayed 
        And they will see a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed 
        And they will see a table with a row with the list item 'Variation 1' and the '<Sub Code>' displayed and the 'variation description' displayed 
        And they will see a table with a row with the list item 'Implementation Date' and the 'entered implementation date' displayed and a change link
        And they will see a table with a row with the list item 'Proposed Change' and the 'Present and Proposed text' displayed and a change link
        And they will see a 'Continue' option
        And they will see a save and exit link 
        
    Examples: 
        | Sub Code | Description | Page |
        | C.II.6(a) | Administrative information concerning the holder's representative | Implementation Date |

    @DPL-3010-1
    Scenario: User selects 'Continue'
        Given the user is on the 'Application Summary 1' page
        When they select 'Continue'
        Then they will be directed to the 'Enter Second Variation Code' page

    @DPL-3010-2
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Application Summary 1' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @DPL-3010-3
    Scenario: User selects change link for implementation date
        Given the user has been directed to the 'Application Summary 1''Change' page
        And they can see a 'Implementation Date' link for 'Implementation Date change link'
        When they select 'Implementation Date'
        Then they will be directed to the MISSING VALUE page

    @DPL-3010-4
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Application Summary 1' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they will be directed to the 'Describe changes' page

    @DPL-3010-5
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page