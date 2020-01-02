Feature: User who has entered a valid code from Data Table IA + IB and has selected variation type IB and a second  from Data Table IB Only, II Only, No Variations, or Z Special checks, and is able to change answers
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5187
        Jira: GS-1068

    Background:
        Given the user has completed the PL-5186A steps

    @FPL-5187-1
    Scenario: User who has entered a valid code from Data Table IA + IB and has selected variation type IB and a second  from Data Table IB Only, II Only, No Variations, or Z Special is directed to 'Check your answers' page 
        And the user has been directed to the 'Check Your Answers' page
        And they have entered a first variation code from Data Table '<Group B>'
        And they have selected Variation Type '<Group A>' 
        And they have entered a second variation code from Data Table 'Check Your Answers'
        When page 'Vary a marketing authorisation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Check your answers before submitting'
        And a page header 'Product Details'
        And a section header 'Procedure Type'
        And a table with a row with the list item 'selected procedure type' and the 'Procedure Option' displayed and a change link
        And a table with a row with the list item 'selected procedure option' and the 'Products' displayed and a change link
        And a table with a row with the list item 'selected product' and the 'Variation Details' displayed and a change link
        And a section header 'Variation 1'
        And a table header 'Code'
        And a table with a row with the list item '<Sub Code B>' and the 'Description' displayed 
        And a table with a row containing the list item 'Variation description' and the 'Variation Type' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'IB' and 'Present' displayed and a change link
        And a table with a row with the list item 'present text' and the 'Proposed' displayed and a change link
        And a table with a row with the list item 'proposed change text' and the 'Variation 2' displayed and a change link
        And a table header 'Code'
        And a table with a row with the list item '<Sub Code A>' and the 'Description' displayed 
        And a table with a row containing the list item 'Variation description' and the 'Variation Type' displayed and a 'Remove variation' link 
        And a table with a row with the list item '<Var Type A>' and 'Present' displayed and a change link
        And a table with a row with the list item 'present text' and the 'Proposed' displayed and a change link
        And a table with a row with the list item 'proposed change text' and the 'Add another variation' displayed and a change link
        And a section header 'Add another variation' with an 'Supporting Documents' link
        And a section header 'Label/ Package leaflet text (QRD). If your variation affects the labelling and/ or package leaflet (QRD text). Please provide proposed versions (in editable Word format) for each product included in the application; do not provide mock-ups at this stage' with a 'Change' link
        And a table with a row with the list item 'selection status' and the 'Mock-Ups, if applicable. Only provide mock-ups if your variation is for the approval of mock-ups, e.g. C.II.6(b)' displayed 
        And a table with a row with the list item 'selection status' and the 'Copy of the relevant page(s) from the Variation Guideline for the change(s) with the relevant boxes for conditions and documentation ticked' displayed 
        And a table with a row with the list item 'selection status' and the 'Summary of the product characteristics (SPC), if applicable. If your variation affects the SPC, please provide proposed versions (in editable Word format) for each product included in the application' displayed 
        And a table with a row with the list item 'selection status' and the 'Omitted Documents' displayed 
        And a table with a row with the list item 'omitted documents text' and the 'Other Information' displayed 
        And a table with a row with the list item 'other information text' and the 'Contact Details' displayed 
        And a section header 'Contact name' with a 'Change' link
        And a table with a row with the list item 'entered contact name' and the 'Purchase order number' displayed 
        And a table with a row with the list item 'entered purchase order number' and the 'Contact number' displayed 
        And a table with a row with the list item 'entered contact number' and the 'Contact email address' displayed 
        And a table with a row with the list item 'entered contact email address' and the 'Invoice email address' displayed 
        And a table with a row with the list item 'entered invoice email address' and the 'Further comments' displayed 
        And a table with a row with the list item 'further comments text' and the MISSING VALUE displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @FPL-5187-2
    Scenario: User selects change link for Product
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they are directed to the 'Select Product 1' page

    @FPL-5187-3
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Describe changes'
        When they select 'Describe changes change link'
        Then they are directed to the 'Describe changes' page

    @FPL-5187-4
    Scenario: User selects Remove variation link for Variation 1
        And the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5187-5
    Scenario: User selects Remove variation link for Variation 2
        And the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @FPL-5187-6
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page

    @FPL-5187-7
    Scenario: User selects 'Continue' option
        And the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they are directed to the 'Declaration' page