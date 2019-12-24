Feature: User who has entered a valid code from Data Table Z Only and has selected variation type IA, and a second variation code from Data Table IA + IB and has selected Variation type IB views the application summary page
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5253

    Background:
        Given the user has completed the PL-5252 steps

    @FPL-5253-1
    Scenario: User who has entered a valid code from Data Table Z Only and has selected variation type IA, and a second variation code from Data Table IA + IB and has selected Variation type IB  is directed to the Application Summary page
        And the user has been directed to the 'Application Summary' page
        And they have entered a first variation code from Data Table 'Z Only'
        And they have selected Variation Type 'IA' 
        And they have entered a second variation code from Data Table 'IA + IB'
        When page 'IB' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Application Summary'
        And a page header 'Vary a marketing authorisation'
        And a table with a row with the list item 'Application summary' and the 'Products' displayed and a change link
        And a table with a row with the list item 'selected product' and the 'Procedure Type' displayed 
        And a table with a row with the list item 'selected procedure type' and the 'Procedure Option' displayed 
        And a table with a row containing the list item 'selected procedure option' and the 'Variation 1' displayed and the '<Sub Code A>' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'variation description' and the 'Variation Type' displayed 
        And a table with a row with the list item '<IA>' and the 'Implementation Date' displayed and a change link
        And a table with a row with the list item 'entered implementation date' and the 'Article 5' displayed and a change link
        And a table with a row with the list item 'the Article 5 answer' and the 'Present' displayed and a change link
        And a table with a row with the list item 'Present text' and the 'Proposed change' displayed and a change link
        And a table with a row containing the list item 'Proposed change text' and the 'Variation 2' displayed and the '<Sub Code B>' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'variation description' and the 'Variation Type' displayed 
        And a table with a row with the list item 'IB' and the 'Present' displayed and a change link
        And a table with a row with the list item 'Present text' and the 'Proposed change' displayed and a change link
        And they will see a 'Continue' option
        And they will see a save and exit link 

    @FPL-5253-2
    Scenario: User selects 'Continue'
        And the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they are directed to the 'Add Another Variation Code' page

    @FPL-5253-3
    Scenario: User selects Remove variation link for Variation 1
        And the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5253-4
    Scenario: User selects Remove variation link for Variation 2
        And the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5253-5
    Scenario: User selects change link for Product
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they are directed to the 'Select Product 1' page

    @FPL-5253-6
    Scenario: User selects change link for implementation date
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Implementation Date'
        When they select 'Implementation Date change link'
        Then they are directed to the 'Implementation Date' page

    @FPL-5253-7
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they are directed to the 'Describe changes' page

    @FPL-5253-8
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Application Summary' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page