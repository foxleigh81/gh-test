Feature: User who has entered a valid code from Data Table Z Only and a second variation  code from Data Table Z Only views the application summary page
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-9091
        Jira: GS-496

    Background:
        Given the user has completed the PL-9090 steps

    @EPL-9091-1
    Scenario: User who has entered a valid code from Data Table Z Only and a second variation code from Data Table Z Only is directed to the Application Summary page
        And the user has been directed to the 'Application Summary' page
        And they have entered a first variation code from Data Table '<Sub Code A>'
        And they have selected Variation Type '<Sub Code B>' 
        And they have entered a second variation code from Data Table 'Application Summary'
        And they have selected Variation Type 'Vary a marketing authorisation' 
        When page 'Application summary' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Products'
        And a page header 'selected product'
        And a table with a row with the list item 'Procedure Type' and the 'selected procedure type' displayed and a change link
        And a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed 
        And a table with a row with the list item 'Variation 1' and the '<Sub Code A>' displayed 
        And a table with a row containing the list item 'variation description' and the 'Variation Type' displayed and the 'IA' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation date' displayed 
        And a table with a row with the list item 'Article 5' and the 'the Article 5 answer' displayed and a change link
        And a table with a row with the list item 'Present' and the 'Present text' displayed and a change link
        And a table with a row with the list item 'Proposed change' and the 'Proposed change text' displayed and a change link
        And a table with a row with the list item 'Variation 2' and the '<Sub Code B>' displayed and a change link
        And a table with a row containing the list item 'variation description' and the 'Variation Type' displayed and the 'IA' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation date' displayed 
        And a table with a row with the list item 'Article 5' and the the Article 5 answer' displayed and a change link
        And a table with a row with the list item 'Present' and the 'Present text' displayed and a change link
        And a table with a row with the list item 'Proposed change' and the 'Proposed change text' displayed and a change link
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed and a change link
        And they will see a 'Continue' option
        And they will see a save and exit link 

    @EPL-9091-2
    Scenario: User selects 'Continue'
        And the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they are directed to the 'Add Another Variation Code' page

    @EPL-9091-3
    Scenario: User selects Remove variation link for Variation 1
        And the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @EPL-9091-4
    Scenario: User selects Remove variation link for Variation 2
        And the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @EPL-9091-5
    Scenario: User selects change link for Product
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they are directed to the 'Select Product 2' page

    @EPL-9091-6
    Scenario: User selects change link for implementation date
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Implementation Date'
        When they select 'Implementation Date change link'
        Then they are directed to the 'Implementation Date' page

    @EPL-9091-7
    Scenario: User selects change link for Article 5
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Article 5'
        When they select 'Article 5 change link'
        Then they are directed to the 'Article 5' page

    @EPL-9091-8
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they are directed to the 'Describe changes' page

    @EPL-9091-9
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Application Summary' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page