Feature: User who has entered a valid code from Data Table IA + IB and has selected variation type IB and a second from Data Table Z Only and has selected variation type IA  checks, and is able to change answers
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5213
        Jira: GS-1145

    Background:
        Given the user has completed the PL-5212A steps

    @FPL-5213-1
    Scenario: User who has entered a valid code from Data Table IA + IB and has selected variation type IB and a second from Data Table Z Only and has selected variation type IA is directed to 'Check your answers' page 
        And the user has been directed to the 'Check Your Answers' page
        And they have entered a first variation code from Data Table 'IA + IB'
        And they have entered a second variation code from Data Table 'IB'
        And they have selected Variation Type 'Z Only' 
        When page 'IA' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Check Your Answers'
        And a page header 'Vary a marketing authorisation'
        And a section header 'Check your answers before submitting'
        And a table with a row with the list item 'Product Details' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Procedure Type' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'selected procedure type' and the MISSING VALUE displayed and a change link
        And a section header 'Procedure Option'
        And a table header 'selected procedure option'
        And a table with a row with the list item 'Products' and the MISSING VALUE displayed 
        And a table with a row containing the list item 'selected product' and the MISSING VALUE displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Details' and MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Variation 1' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Code' and the MISSING VALUE displayed and a change link
        And a table header '<Sub Code A>'
        And a table with a row with the list item 'Description' and the MISSING VALUE displayed 
        And a table with a row containing the list item 'Variation description' and the MISSING VALUE displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and MISSING VALUE displayed and a change link
        And a table with a row with the list item 'IB' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Present' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'present text' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item ''Proposed' and the MISSING VALUE displayed and a change link
        And a section header 'proposed change text' with an MISSING VALUE link
        And a section header 'Variation 2' with a 'Change' link
        And a table with a row with the list item 'Code' and the MISSING VALUE displayed 
        And a table with a row with the list item '<Sub Code B>' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Description' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Variation description' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Variation Type' and the MISSING VALUE displayed 
        And a table with a row with the list item 'IA' and the MISSING VALUE displayed 
        And a section header 'Implementation Date' with a 'Change' link
        And a table with a row with the list item 'entered implementation Date' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Article 5' and the MISSING VALUE displayed 
        And a table with a row with the list item 'the Article 5 answer' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Present' and the MISSING VALUE displayed 
        And a table with a row with the list item 'present text' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Proposed' and the MISSING VALUE displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @FPL-5213-2
    Scenario: User selects change link for Product
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Product 1'
        Then they are directed to the 'Product change link' page

    @FPL-5213-3
    Scenario: User selects change link for Article 5
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Article 5'
        Then they are directed to the 'Article 5 change link' page

    @FPL-5213-4
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Describe changes'
        Then they are directed to the 'Describe changes change link' page

    @FPL-5213-5
    Scenario: User selects Remove variation link for Variation 1
        And the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5213-6
    Scenario: User selects Remove variation link for Variation 2
        And the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5213-7
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page

    @FPL-5213-8
    Scenario: User selects 'Continue' option
        And the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they are directed to the 'Declaration' page