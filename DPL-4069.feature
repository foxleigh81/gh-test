Feature: User who has entered a valid code from Data Table Z Only views the Application Summary page
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-4069
        Jira: GS-334

    Background:
        Given the user has completed the PL-4068 steps

    @DPL-4069-1
    Scenario: User who has entered a valid code from Data Table Z Only is directed to the Application Summary page
        And the user has been directed to the 'Application Summary' page
        And they have entered a value from Data Table '<Sub Code>'
        When page 'Application Summary' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Application summary'
        And a table with a row with the list item 'Products' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'selected product' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Procedure Type' and the MISSING VALUE displayed 
        And a table with a row containing the list item 'selected procedure type' and the MISSING VALUE displayed and the MISSING VALUE displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Procedure Option' and the MISSING VALUE displayed 
        And a table with a row with the list item 'selected procedure option' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Variation 1' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item '<Sub Code>' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'variation description' and the MISSING VALUE displayed and a change link
        And they will see a 'Continue' option
        And they will see a save and exit link 

    @DPL-4069-2
    Scenario: User selects 'Continue'
        And the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they are directed to the 'Enter Second Variation Code' page

    @DPL-4069-3
    Scenario: User selects Remove variation link
        And the user is on the 'Application Summary' page
        When they select 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @DPL-4069-4
    Scenario: User selects change link for Product
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Product 1'
        Then they are directed to the 'Product change link' page

    @DPL-4069-5
    Scenario: User selects change link for Article 5
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Article 5'
        Then they are directed to the 'Article 5 change link' page

    @DPL-4069-6
    Scenario: User selects change link for implementation date
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Implementation Date'
        Then they are directed to the 'Implementation Date change link' page

    @DPL-4069-7
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Proposed changes'
        Then they are directed to the 'Proposed changes change link' page

    @DPL-4069-8
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Application Summary' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page