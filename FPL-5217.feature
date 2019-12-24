Feature: User who has entered a valid code from Data Table IA + IB and has selected variation type IB and a second from Data Table Z Only and has selected variation type IB or II  views the application summary page
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5217

    Background:
        Given the user has completed the PL-5216 steps

    @FPL-5217-1
    Scenario: User who has entered a valid code from Data Table IA + IB and has selected variation type IB  and a second from Data Table Z Only and has selected variation type IB or II is directed to the Application Summary page
        And the user has been directed to the 'Application Summary' page
        And they have entered a first variation code from Data Table '<Group A>'
        And they have selected Variation Type '<Var Type B>' 
        And they have entered a second variation code from Data Table '<Group B>'
        And they have selected Variation Type '<Var Type B>' 
        When page 'Application Summary' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Application summary'
        And a table with a row with the list item 'Products' and the 'selected product' displayed and a change link
        And a table with a row with the list item 'Procedure Type' and the 'selected procedure type' displayed 
        And a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed 
        And a table with a row containing the list item 'Variation 1' and the '<Sub Code A>' displayed and the 'variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and the '<Var Type A>' displayed 
        And a table with a row with the list item 'Present' and the 'Present text' displayed and a change link
        And a table with a row with the list item 'Proposed change' and the 'Proposed change text' displayed and a change link
        And a table with a row containing the list item 'Variation 2' and the '<Sub Code B>' displayed and the 'variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and the '<Var Type B>' displayed 
        And a table with a row with the list item 'Article 5' and the 'the Article 5 answer' displayed and a change link
        And a table with a row with the list item 'Present' and the 'Present text' displayed and a change link
        And a table with a row with the list item 'Proposed change' and the 'Proposed change text' displayed and a change link
        And they will see a 'Continue' option
        And they will see a save and exit link 

    @FPL-5217-2
    Scenario: User selects 'Continue'
        And the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they are directed to the 'Add Another Variation Code' page

    @FPL-5217-3
    Scenario: User selects Remove variation link for Variation 1
        And the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5217-4
    Scenario: User selects Remove variation link for Variation 2
        And the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5217-5
    Scenario: User selects change link for Product
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they are directed to the 'Select Product 1' page

    @FPL-5217-6
    Scenario: User selects change link for Article 5
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Article 5'
        When they select 'Article 5 change link'
        Then they are directed to the 'Article 5' page

    @FPL-5217-7
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they are directed to the 'Describe changes' page

    @FPL-5217-8
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Application Summary' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page