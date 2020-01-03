Feature: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table Z Only checks, and is able to change answers
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-9035
        Jira: GS-419

    Background:
        Given the user has completed the PL-9034A steps

    @EPL-9035-1
    Scenario: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table Z Only is directed to 'Check your answers' page 
        And the user has been directed to the 'Check Your Answers' page
        And they have entered a first variation code from Data Table 'IA Only'
        And they have entered a second variation code from Data Table 'Z Only'
        When page 'Check Your Answers' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Check your answers before submitting'
        And a section header 'Product Details'
        And a table with a row with the list item 'Procedure Type' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'selected procedure type' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Procedure Option' and the MISSING VALUE displayed and a change link
        And a section header 'selected procedure option' with an MISSING VALUE link
        And a section header 'Products'
        And a table header 'selected product'
        And a table with a row with the list item 'Add another product' and the MISSING VALUE displayed 
        And a table with a row containing the list item 'Add another product' and the MISSING VALUE displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Details' and MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Variation 1' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Code' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item '<Sub Code A>' and the MISSING VALUE displayed and a change link
        And a table header 'Description'
        And a table with a row with the list item 'Variation description' and the MISSING VALUE displayed 
        And a table with a row containing the list item 'Variation Type' and the MISSING VALUE displayed and a 'Remove variation' link 
        And a table with a row with the list item 'IA' and MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Implementation Date' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'entered implementation Date' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Present' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'present text' and the MISSING VALUE displayed and a change link
        And a section header 'Proposed' with an MISSING VALUE link
        And a section header 'proposed change text' with a 'Change' link
        And a table with a row with the list item 'Variation 2' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Code' and the MISSING VALUE displayed 
        And a table with a row with the list item '<Sub Code B>' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Description' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Variation description' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Variation Type' and the MISSING VALUE displayed 
        And a section header 'IA' with a 'Change' link
        And a table with a row with the list item 'Implementation Date' and the MISSING VALUE displayed 
        And a table with a row with the list item 'entered implementation Date' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Article 5' and the MISSING VALUE displayed 
        And a table with a row with the list item 'the Article 5 answer' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Present' and the MISSING VALUE displayed 
        And a table with a row with the list item 'present text' and the MISSING VALUE displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @EPL-9035-2
    Scenario: User selects change link for Product
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Product 1'
        Then they are directed to the 'Product change link' page

    @EPL-9035-3
    Scenario: User selects change link for implementation date
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Implementation Date'
        Then they are directed to the 'Implementation Date change link' page

    @EPL-9035-4
    Scenario: User selects change link for Article 5
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Article 5'
        Then they are directed to the 'Article 5 change link' page

    @EPL-9035-5
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Describe changes'
        Then they are directed to the 'Describe changes change link' page

    @EPL-9035-6
    Scenario: User selects Remove variation link for Variation 1
        And the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @EPL-9035-7
    Scenario: User selects Remove variation link for Variation 2
        And the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @EPL-9035-8
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page

    @EPL-9035-9
    Scenario: User selects 'Continue' option
        And the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they are directed to the 'Declaration' page