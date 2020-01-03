Feature: User who has entered a valid code from Data Table IA Only checks, and is able to change answers
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1012D
        Jira: GS-105

    Background:
        Given the user has completed the PL-1012C steps

    @BPL-1012D-1
    Scenario: User who has entered a valid code from Data Table IA Only is directed to 'Check your answers' page 
        And the user has been directed to the 'Check Your Answers' page
        And they have entered a value from Data Table 'IA Only'
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
        And a table header 'selected products'
        And a table with a row with the list item 'Add another product' and the MISSING VALUE displayed 
        And a table with a row containing the list item 'Add another product' and the MISSING VALUE displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Details' and MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Variation 1' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item 'Code' and the MISSING VALUE displayed and a change link
        And a table with a row with the list item '<Sub Code>' and the MISSING VALUE displayed and a change link
        And a section header 'Description' with a 'Change' link
        And a table with a row with the list item 'Variation description' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Variation Type' and the MISSING VALUE displayed 
        And a table with a row with the list item 'IA' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Implementation Date' and the MISSING VALUE displayed 
        And a table with a row with the list item 'entered implementation Date' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Present' and the MISSING VALUE displayed 
        And a section header 'present text' with a 'Change' link
        And a table with a row with the list item 'Proposed' and the MISSING VALUE displayed 
        And a table with a row with the list item 'proposed change text' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Supporting Documents' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Label/ Package leaflet text (QRD). If your variation affects the labelling and/ or package leaflet (QRD text). Please provide proposed versions (in editable Word format) for each product included in the application; do not provide mock-ups at this stage' and the MISSING VALUE displayed 
        And a table with a row with the list item 'selection status' and the MISSING VALUE displayed 
        And a table with a row with the list item 'Mock-Ups, if applicable. Only provide mock-ups if your variation is for the approval of mock-ups, e.g. C.II.6(b)' and the MISSING VALUE displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @BPL-1012D-2
    Scenario: User selects change link for Product
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Product 1'
        Then they are directed to the 'Product change link' page

    @BPL-1012D-3
    Scenario: User selects change link for implementation date
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Implementation Date'
        Then they are directed to the 'Implementation Date change link' page

    @BPL-1012D-4
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Describe changes'
        Then they are directed to the 'Describe changes change link' page

    @BPL-1012D-5
    Scenario: User selects change variation link
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change variation' link for MISSING VALUE
        When they select 'Variation <Sub Code>'
        Then they are directed to the 'change variation link' page

    @BPL-1012D-6
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page

    @BPL-1012D-7
    Scenario: User selects 'Continue' option
        And the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they are directed to the 'Declaration' page