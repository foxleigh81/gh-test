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
        And a table with a row with the list item 'Product Details' and the 'Procedure Type' displayed and a change link
        And a table with a row with the list item 'selected procedure type' and the 'Procedure Option' displayed and a change link
        And a table with a row with the list item 'selected procedure option' and the 'Products' displayed and a change link
        And a section header 'selected product'
        And a table header 'Variation Details'
        And a table with a row with the list item 'Variation 1' and the 'Code' displayed 
        And a table with a row containing the list item '<Sub Code A>' and the 'Description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation description' and 'Variation Type' displayed and a change link
        And a table with a row with the list item 'IB' and the 'Present' displayed and a change link
        And a table with a row with the list item 'present text' and the ''Proposed' displayed and a change link
        And a table header 'proposed change text'
        And a table with a row with the list item 'Variation 2' and the 'Code' displayed 
        And a table with a row containing the list item '<Sub Code B>' and the 'Description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation description' and 'Variation Type' displayed and a change link
        And a table with a row with the list item 'IA' and the 'Implementation Date' displayed and a change link
        And a table with a row with the list item 'entered implementation Date' and the 'Article 5' displayed and a change link
        And a table with a row with the list item 'the Article 5 answer' and the 'Present' displayed and a change link
        And a table with a row with the list item 'present text' and the 'Proposed' displayed and a change link
        And a section header 'proposed change text' with an 'Add another variation' link
        And a section header 'Add another variation' with a 'Change' link
        And a table with a row with the list item 'Supporting Documents' and the 'Label/ Package leaflet text (QRD). If your variation affects the labelling and/ or package leaflet (QRD text). Please provide proposed versions (in editable Word format) for each product included in the application; do not provide mock-ups at this stage' displayed 
        And a table with a row with the list item 'selection status' and the 'Mock-Ups, if applicable. Only provide mock-ups if your variation is for the approval of mock-ups, e.g. C.II.6(b)' displayed 
        And a table with a row with the list item 'selection status' and the 'Copy of the relevant page(s) from the Variation Guideline for the change(s) with the relevant boxes for conditions and documentation ticked' displayed 
        And a table with a row with the list item 'selection status' and the 'Summary of the product characteristics (SPC), if applicable. If your variation affects the SPC, please provide proposed versions (in editable Word format) for each product included in the application' displayed 
        And a table with a row with the list item 'selection status' and the 'Omitted Documents' displayed 
        And a table with a row with the list item 'omitted documents text' and the 'Other Information' displayed 
        And a section header 'other information text' with a 'Change' link
        And a table with a row with the list item 'Contact Details' and the 'Contact name' displayed 
        And a table with a row with the list item 'entered contact name' and the 'Purchase order number' displayed 
        And a table with a row with the list item 'entered purchase order number' and the 'Contact number' displayed 
        And a table with a row with the list item 'entered contact number' and the 'Contact email address' displayed 
        And a table with a row with the list item 'entered contact email address' and the 'Invoice email address' displayed 
        And a table with a row with the list item 'entered invoice email address' and the 'Further comments' displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @FPL-5213-2
    Scenario: User selects change link for Product
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they are directed to the 'Select Product 1' page

    @FPL-5213-3
    Scenario: User selects change link for Article 5
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Article 5'
        When they select 'Article 5 change link'
        Then they are directed to the 'Article 5' page

    @FPL-5213-4
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Describe changes'
        When they select 'Describe changes change link'
        Then they are directed to the 'Describe changes' page

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