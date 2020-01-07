Feature: User who has entered a valid code from Data Table IA + IB and has selected variation type IB and a second from Data Table IA Only checks, and is able to change answers
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5180
        Jira: GS-1047

    Background:
        Given the user has completed the PL-5179A steps

    @FPL-5180-1
    Scenario: User who has entered a valid code from Data Table IA + IB and has selected variation type IB and a second from Data Table IA Only is directed to 'Check your answers' page 
        And the user has been directed to the 'Check Your Answers' page
        And they have entered a first variation code from Data Table '<Group B>'
        And they have selected Variation Type 'IB' 
        And they have entered a second variation code from Data Table '<Group A>
        When page 'Check Your Answers' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Check your answers before submitting'
        And a table with a row with the list item 'Product Details' and the 'Procedure Type' displayed and a change link
        And a table with a row with the list item 'selected procedure type' and the 'Procedure Option' displayed 
        And a table with a row with the list item 'selected procedure option' and the 'Products' displayed 
        And a table with a row containing the list item 'selected product' and the 'Variation Details' displayed and the 'Variation 1' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Code' and the '<Sub Code A>' displayed 
        And a table with a row with the list item 'Description' and the 'Variation description' displayed and a change link
        And a table with a row with the list item 'Variation Type' and the 'IB' displayed and a change link
        And a table with a row with the list item 'Present' and the 'present text' displayed and a change link
        And a table with a row containing the list item 'Proposed' and the 'proposed change text' displayed and the 'Variation 2' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Code' and the '<Sub Code B>' displayed 
        And a table with a row with the list item 'Description' and the 'Variation description' displayed and a change link
        And a table with a row with the list item 'Variation Type' and the 'IA' displayed and a change link
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation Date' displayed and a change link
        And a table with a row with the list item 'Present' and the 'present text' displayed and a change link
        And they will see a 'Continue' option
        And they will see a save and exit link 

    @FPL-5180-2
    Scenario: User selects change link for Product
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they are directed to the 'Select Product 1' page

    @FPL-5180-3
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Describe changes'
        When they select 'Describe changes change link'
        Then they are directed to the 'Describe changes' page

    @FPL-5180-4
    Scenario: User selects Remove variation link for Variation 1
        And the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5180-5
    Scenario: User selects Remove variation link for Variation 2
        And the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5180-6
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page

    @FPL-5180-7
    Scenario: User selects 'Continue' option
        And the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they are directed to the 'Declaration' page