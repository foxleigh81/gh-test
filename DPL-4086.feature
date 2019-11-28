Feature: User who has entered a valid code from Data Table IA Only  and a second variation code from Data Table IA + IB checks, and is able to change answers
    Description:
        Reference: DPL-4086

    Background: Given the user has completed the PL-4085 steps

    @DPL-4086
    Scenario Outline: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table IA Only is directed to 'Check your answers' page 
        Given the user has been directed to the 'Check Your Answers' page
        And they have entered a first variation code from Data Table 'IA Only'
        And they have entered a second variation code from Data Table 'IA + IB'
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
        And a table with a row with the list item 'Variation Type' and the 'selected variation type' displayed and a change link
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation Date' displayed and a change link
        And a table with a row with the list item 'Present' and the 'present situation text' displayed and a change link
        And a table with a row with the list item Proposed' and the 'proposed change text' displayed and a change link
        And a table header 'Variation 2'
        And a table with a row with the list item 'Code' and the '<Sub Code B>' displayed 
        And a table with a row containing the list item 'Description' and the 'Variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and the 'selected variation type' displayed and a change link
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation Date' displayed and a change link
        And a table with a row with the list item 'Present' and the 'present situation text' displayed and a change link
        And a table with a row with the list item Proposed' and the 'proposed change text' displayed and a change link
        And a section header 'Supporting Documents' with an 'Label/ Package leaflet text (QRD). If your variation affects the labelling and/ or package leaflet (QRD text). Please provide proposed versions (in editable Word format) for each product included in the application; do not provide mock-ups at this stage' link
        And a section header 'selection status' with a 'Change' link
        And a table with a row with the list item 'Mock-Ups, if applicable. Only provide mock-ups if your variation is for the approval of mock-ups, e.g. C.II.6(b)' and the 'selection status' displayed 
        And a table with a row with the list item 'Copy of the relevant page(s) from the Variation Guideline for the change(s) with the relevant boxes for conditions and documentation ticked' and the 'selection status' displayed 
        And a table with a row with the list item 'Summary of the product characteristics (SPC), if applicable. If your variation affects the SPC, please provide proposed versions (in editable Word format) for each product included in the application' and the 'selection status' displayed 
        And a table with a row with the list item 'Omitted Documents' and the 'omitted documents text' displayed 
        And a table with a row with the list item 'Other Information' and the 'other information text' displayed 
        And a table with a row with the list item 'Contact Details' and the 'Contact name' displayed 
        And a section header 'entered contact name' with a 'Change' link
        And a table with a row with the list item 'Purchase order number' and the 'entered purchase order number' displayed 
        And a table with a row with the list item 'Contact number' and the 'entered contact number' displayed 
        And a table with a row with the list item 'Contact email address' and the 'entered contact email address' displayed 
        And a table with a row with the list item 'Invoice email address' and the 'entered invoice email address' displayed 
        And a table with a row with the list item 'Further comments' and the 'further comments text' displayed 
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code A | Sub Code B |
        | C.II.6(a) | A.3 |

    @DPL-4086-1
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @DPL-4086-2
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Describe changes'
        When they select 'Describe changes change link'
        Then they will be directed to the 'Describe changes' page

    @DPL-4086-3
    Scenario: User selects Remove variation link for Variation 1
        Given they can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @DPL-4086-4
    Scenario: User selects Remove variation link for Variation 2
        Given they can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @DPL-4086-5
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page

    @DPL-4086-6
    Scenario: User selects 'Continue' option
        Given the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they will be directed to the 'Declaration' page