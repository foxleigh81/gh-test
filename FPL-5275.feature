Feature: User who has entered a valid code from Data Table Z Only and has selected variation type IA, and a second from Data Table Z Only and has selected variation type IB or II checks, and is able to change answers
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5275
        Jira: GS-1323

    Background:
        Given the user has completed the PL-5274A steps

    @FPL-5275-1
    Scenario: User who has entered a valid code from Data Table Z Only and has selected variation type IA, and a second from Data Table Z Only and has selected variation type IB or II is directed to 'Check your answers' page 
        And the user has been directed to the 'Check Your Answers' page
        And they have entered a first variation code from Data Table '<Group A>'
        And they have selected Variation Type '<Var Type A>' 
        And they have entered a second variation code from Data Table '<Group B>'
        And they have selected Variation Type '<Var Type B>' 
        When page 'Check Your Answers' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Check your answers before submitting'
        And a section header 'Product Details'
        And a table with a row with the list item 'Procedure Type' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'selected procedure type' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Procedure Option' and the MISSING VALUE displayed and a change link
        And a section header 'selected procedure option'
        And a table header 'Products'
        And a table with a row with the list item 'selected product' and the MISSING VALUE displayed 
        And a table with a row containing the list item 'Variation Details' and the MISSING VALUE displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation 1' and MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Code' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item '<Sub Code A>' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Description' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Variation description' and the MISSING VALUE displayed and a change link
        And a table header 'Variation Type'
        And a table with a row with the list item '<Var Type A>' and the MISSING VALUE displayed 
        And a table with a row containing the list item 'Implementation Date' and the MISSING VALUE displayed and a 'Remove variation' link 
        And a table with a row with the list item 'entered implementation Date' and MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Article 5' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'the Article 5 answer' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Present' and the MISSING VALUE displayed and a change link
        And a section header 'present text' with an MISSING VALUE link
        And a section header 'Proposed' with a 'Change' link
        And a table with a row with the list item 'proposed change text' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Variation 2' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Code' and the MISSING VALUE displayed 
        And a table with a row with the list item '<Sub Code B>' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Description' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Variation description' and the MISSING VALUE displayed 
        And a section header 'Variation Type' with a 'Change' link
        And a table with a row with the list item '<Var Type B>' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Article 5' and the MISSING VALUE displayed 
        And a table with a row with the list item 'the Article 5 answer' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Present' and the MISSING VALUE displayed 
        And a table with a row with the list item 'present text' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Proposed' and the MISSING VALUE displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @FPL-5275-2
    Scenario: User selects change link for Product
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Product 1'
        Then they are directed to the 'Product change link' page

    @FPL-5275-3
    Scenario: User selects change link for Article 5
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Article 5'
        Then they are directed to the 'Article 5 change link' page

    @FPL-5275-4
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Describe changes'
        Then they are directed to the 'Describe changes change link' page

    @FPL-5275-5
    Scenario: User selects Remove variation link for Variation 1
        And the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5275-6
    Scenario: User selects Remove variation link for Variation 2
        And the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5275-7
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page

    @FPL-5275-8
    Scenario: User selects 'Continue' option
        And the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they are directed to the 'Declaration' page