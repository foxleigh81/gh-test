Feature: User who has entered a valid code from Data Table IA Only and a second variation  code from Data Table Z Only views the application summary page
    Description:
        Reference: EPL-4021

    Background: Given the user has completed the PL-4019 steps

    @EPL-4021
    Scenario Outline: User who has entered a valid code from Data Table IA Only and a second variation  code from Data Table Data Table Z Only is directed to the Application Summary page
        Given the user has been directed to the 'Application Summary' page
        And they have entered a first variation code from Data Table '<Sub Code A>'
        And they have entered a second variation code from Data Table '<Sub Code B>'
        When page 'Application Summary' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Application summary'
        And a table with a row with the list item 'Products' and the 'selected product' displayed and a change link
        And a table with a row with the list item 'Procedure Type' and the 'selected prcedure type' displayed 
        And a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed 
        And a table with a row containing the list item 'Variation 1' and the '<Sub Code A>' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and the 'selected variation type' displayed 
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation date' displayed and a change link
        And a table with a row with the list item 'Proposed Change' and the 'Present and Proposed text' displayed and a change link
        And a table with a row containing the list item 'Variation 2' and the '<Sub Code B>' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and the 'selected variation type' displayed 
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation date' displayed and a change link
        And a table with a row with the list item 'Article 5' and the the Article 5 answer' displayed and a change link
        And a table with a row with the list item 'Proposed Change' and the 'Present and Proposed text' displayed and a change link
        And they will see a 'Continue' option
        And they will see a save and exit link 
        
    Examples: 
        | Sub Code A | Sub Code B |
        | C.II.6(a) | A(z) |

    @EPL-4021-1
    Scenario: User selects 'Continue'
        Given the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they will be directed to the 'Add Another Variation Code' page

    @EPL-4021-2
    Scenario: User selects Remove variation link for Variation 1
        Given they can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @EPL-4021-3
    Scenario: User selects Remove variation link for Variation 2
        Given they can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @EPL-4021-4
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @EPL-4021-5
    Scenario: User selects change link for implementation date
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Implementation Date'
        When they select 'Implementation Date change link'
        Then they will be directed to the 'Implementation Date' page

    @EPL-4021-6
    Scenario: User selects change link for Article 5
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Article 5'
        When they select 'Article 5 change link'
        Then they will be directed to the 'Article 5' page

    @EPL-4021-7
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they will be directed to the 'Describe changes' page

    @EPL-4021-8
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page