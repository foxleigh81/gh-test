Feature: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table Z Only and has selected variation type IA  checks, and is able to change answers
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5051
        Jira: GS-678

    Background:
        Given the user has completed the PL-5050A steps

    @FPL-5051-1
    Scenario: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table Z Only and has selected variation type IA is directed to 'Check your answers' page 
        And the user has been directed to the 'Check Your Answers' page
        And they have entered a first variation code from Data Table '<IA Only>'
        And they have entered a second variation code from Data Table '<Z Only>'
        And they have selected Variation Type '<IA>' 
        When page 'Check Your Answers' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Check your answers before submitting'
        And a section header 'Product Details'
        And a table with a row with the list item 'Procedure Type' and the 'selected procedure type' displayed and a change link
        And a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed and a change link
        And a table with a row with the list item 'Products' and the 'selected product' displayed and a change link
        And a section header 'Variation Details'
        And a table header 'Variation 1'
        And a table with a row with the list item 'Code' and the '<Sub Code A>' displayed 
        And a table with a row containing the list item 'Description' and the 'Variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and 'IA' displayed and a change link
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation Date' displayed and a change link
        And a table with a row with the list item 'Present' and the 'present text' displayed and a change link
        And a table with a row with the list item ''Proposed' and the 'proposed change text' displayed and a change link
        And a table header 'Variation 2'
        And a table with a row with the list item 'Code' and the '<Sub Code B>' displayed 
        And a table with a row containing the list item 'Description' and the 'Variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and '<IA>' displayed and a change link
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation Date' displayed and a change link
        And a table with a row with the list item 'Article 5' and the 'the Article 5 answer' displayed and a change link
        And a table with a row with the list item 'Present' and the 'present text' displayed and a change link
        And a table with a row with the list item 'Proposed' and the 'proposed change text' displayed and a change link
        And a section header 'Add another variation' with an 'Add another variation' link
        And a section header 'Supporting Documents' with a 'Change' link
        And a table with a row with the list item 'Label/ Package leaflet text (QRD). If your variation affects the labelling and/ or package leaflet (QRD text). Please provide proposed versions (in editable Word format) for each product included in the application; do not provide mock-ups at this stage' and the 'selection status' displayed 
        And a table with a row with the list item 'Mock-Ups, if applicable. Only provide mock-ups if your variation is for the approval of mock-ups, e.g. C.II.6(b)' and the 'selection status' displayed 
        And a table with a row with the list item 'Copy of the relevant page(s) from the Variation Guideline for the change(s) with the relevant boxes for conditions and documentation ticked' and the 'selection status' displayed 
        And a table with a row with the list item 'Summary of the product characteristics (SPC), if applicable. If your variation affects the SPC, please provide proposed versions (in editable Word format) for each product included in the application' and the 'selection status' displayed 
        And a table with a row with the list item 'Omitted Documents' and the 'omitted documents text' displayed 
        And a table with a row with the list item 'Other Information' and the 'other information text' displayed 
        And a section header 'Contact Details' with a 'Change' link
        And a table with a row with the list item 'Contact name' and the 'entered contact name' displayed 
        And a table with a row with the list item 'Purchase order number' and the 'entered purchase order number' displayed 
        And a table with a row with the list item 'Contact number' and the 'entered contact number' displayed 
        And a table with a row with the list item 'Contact email address' and the 'entered contact email address' displayed 
        And a table with a row with the list item 'Invoice email address' and the 'entered invoice email address' displayed 
        And a table with a row with the list item 'Further comments' and the 'further comments text' displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @FPL-5051-2
    Scenario: User selects change link for Product
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they are directed to the 'Select Product 1' page

    @FPL-5051-3
    Scenario: User selects change link for Article 5
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Article 5'
        When they select 'Article 5 change link'
        Then they are directed to the 'Article 5' page

    @FPL-5051-4
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Describe changes'
        When they select 'Describe changes change link'
        Then they are directed to the 'Describe changes' page

    @FPL-5051-5
    Scenario: User selects Remove variation link for Variation 1
        And the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5051-6
    Scenario: User selects Remove variation link for Variation 2
        And the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5051-7
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page

    @FPL-5051-8
    Scenario: User selects 'Continue' option
        And the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they are directed to the 'Declaration' page