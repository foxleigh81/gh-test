Feature: User who has entered a valid code from Data Table Z Only, and has selected IA variation type, checks and is able to change answers
    Description:
        Reference: APL-0032D

    Background: Given the user has completed the PL-0032C steps

    @APL-0032D
    Scenario Outline: User who has entered a valid code from Data Table Z Only and has selected IA variation type is directed to the 'Check your answers' page 
        Given the user has been directed to the 'Check Your Answers' page
        And they have entered a value from Data Table 'Data Table Z Only'
        And they have selected Variation Type 'IA' 
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
        And a table with a row with the list item '<Sub Code>' and the 'Description' displayed 
        And a table with a row containing the list item 'Variation description' and the 'Variation Type' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'selected variation type' and the 'Implementation Date' displayed and a change link
        And a table with a row with the list item 'entered implementation Date' and the 'Article 5' displayed and a change link
        And a table with a row with the list item 'Article 5 answer' and the 'Present' displayed and a change link
        And a table with a row with the list item 'present situation text' and the Proposed' displayed and a change link
        And a table with a row with the list item 'proposed change text' and the 'Supporting Documents' displayed and a change link
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
        And a table with a row with the list item 'further comments text'  and the MISSING VALUE displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | A(z) | Other Variation | Variation Type Page 1 |
        | B.I.a.1(z) | Other variation | Variation Type Page 1 |
        | B.I.a.2(z) | Other variation | Variation Type Page 1 |
        | B.I.a.3(z) | Other variation | Variation Type Page 1 |
        | B.I.a.4(z) | Other variation | Variation Type Page 1 |
        | B.I.a.5(z) | Other variation | Variation Type Page 1 |
        | B.I.a(z) | Change in the manufacture of the active substance: Other variation | Variation Type Page 1 |
        | B.I.b.1(z) | Other variation | Variation Type Page 1 |
        | B.I.b.2(z) | Other variation | Variation Type Page 1 |
        | B.I.b(z) | Change in control of the active substance | Variation Type Page 1 |
        | B.I.c.1(z) | Other variation | Variation Type Page 1 |
        | B.I.c.2(z) | Other variation | Variation Type Page 1 |
        | B.I.c.3(z) | Other variation | Variation Type Page 1 |
        | B.I.c(z) | Change in container closure system of the active substance: Other variation | Variation Type Page 1 |
        | B.I.d.1(z) | Other variation | Variation Type Page 1 |
        | B.I.d(z) | Stability: Other variation | Variation Type Page 1 |
        | B.I.e.1(z) | Other variation | Variation Type Page 1 |
        | B.I.e.2(z) | Other variation | Variation Type Page 1 |
        | B.I.e.3(z) | Other variation | Variation Type Page 1 |
        | B.I.e.4(z) | Other variation | Variation Type Page 1 |
        | B.I.e.5(z) | Other variation | Variation Type Page 1 |
        | B.I.e(z) | Design space and post approval change management protocols. Other Variation | Variation Type Page 1 |
        | B.I(z) | Active substance: Other variation | Variation Type Page 1 |
        | B.II.a.1(z) | Other variation | Variation Type Page 1 |
        | B.II.a.2(z) | Other variation | Variation Type Page 1 |
        | B.II.a.3(z) | Other variation | Variation Type Page 1 |
        | B.II.a.4(z) | Other variation | Variation Type Page 1 |
        | B.II.a.5(z) | Other variation | Variation Type Page 1 |
        | B.II.a.6(z) | Other variation | Variation Type Page 1 |
        | B.II.a(z) | Change in description and composition of the final product: Other variation | Variation Type Page 1 |
        | B.II.b.1(z) | Other variation | Variation Type Page 1 |
        | B.II.b.2(z) | Other variation | Variation Type Page 1 |
        | B.II.b.3(z) | Other variation | Variation Type Page 1 |
        | B.II.b.4(z) | Other variation | Variation Type Page 1 |
        | B.II.b.5(z) | Other variation | Variation Type Page 1 |
        | B.II.b(z) | Change in the manufacture of the finished product | Variation Type Page 1 |
        | B.II.c.1(z) | Other variation | Variation Type Page 1 |
        | B.II.c.2(z) | Other variation | Variation Type Page 1 |
        | B.II.c.3(z) | Other variation | Variation Type Page 1 |
        | B.II.c.4(z) | Other variation | Variation Type Page 1 |
        | B.II.c(z) | Change in control of excipients in the finished product | Variation Type Page 1 |
        | B.II.d.1(z) | Other variation | Variation Type Page 1 |
        | B.II.d.2(z) | Other variation | Variation Type Page 1 |
        | B.II.d.3(z) | Other variation | Variation Type Page 1 |
        | B.II.d(z) | Change in control of the finished product: Other variation | Variation Type Page 1 |
        | B.II.e.1(z) | Other variation | Variation Type Page 1 |
        | B.II.e.2(z) | Other variation | Variation Type Page 1 |
        | B.II.e.3(z) | Other variation | Variation Type Page 1 |
        | B.II.e.4(z) | Other variation | Variation Type Page 1 |
        | B.II.e.5(z) | Other variation | Variation Type Page 1 |
        | B.II.e.6(z) | Other variation | Variation Type Page 1 |
        | B.II.e.7(z) | Other variation | Variation Type Page 1 |
        | B.II.e(z) | Change in the container closure system of the finished product: Other variation | Variation Type Page 1 |
        | B.II.f.1(z) | Other variation | Variation Type Page 1 |
        | B.II.f(z) | Stability: Other variation | Variation Type Page 1 |
        | B.II.g.1(z) | Other variation | Variation Type Page 1 |
        | B.II.g.2(z) | Other variation | Variation Type Page 1 |
        | B.II.g.3(z) | Other variation | Variation Type Page 1 |
        | B.II.g.4(z) | Other variation | Variation Type Page 1 |
        | B.II.g.5(z) | Other variation | Variation Type Page 1 |
        | B.II.g(z) | Design space and post approval change management protocols: Other variation | Variation Type Page 1 |
        | B.II.h.1(z) | Other variation | Variation Type Page 1 |
        | B.II.h(z) | Adventitious agents safety: Other variation | Variation Type Page 1 |
        | B.II(z) | Finished product: Other variation | Variation Type Page 1 |
        | B.III.1(z) | Other Variation | Variation Type Page 1 |
        | B.III.2(z) | Other Variation | Variation Type Page 1 |
        | B.III(z) | CEP/TSE/Monographs: Other variation | Variation Type Page 1 |
        | B.IV.1(z) | Other variation | Variation Type Page 1 |
        | B.IV.2(z) | Other variation | Variation Type Page 1 |
        | B.IV.3(z) | Other variation | Variation Type Page 1 |
        | B.IV(z) | Change in medical devices: Other Variation | Variation Type Page 1 |
        | B.V.a.1(z) | Other variation | Variation Type Page 1 |
        | B.V.a.2(z) | Other variation | Variation Type Page 1 |
        | B.V.b.1(z) | Other variation | Variation Type Page 1 |
        | B(z) | Other variation | Variation Type Page 1 |
        | C.I.1(z) | Other variation | Variation Type Page 1 |
        | C.I.2(z) | Other variation | Variation Type Page 1 |
        | C.I.4(z) | Other variation | Variation Type Page 1 |
        | C.I.6(z) | Other variation | Variation Type Page 1 |
        | C.I.7(z) | Other variation | Variation Type Page 1 |
        | C.I.9(z) | Other variation | Variation Type Page 1 |
        | C.I.11(z) | Other variation | Variation Type Page 1 |
        | C.I.12(z) | Other variation | Variation Type Page 1 |
        | C.I.13(z) | Other variation | Variation Type Page 1 |
        | C.I(z) | Other variation | Variation Type Page 1 |
        | C.I(z).1 | Changes (Safety/Efficacy) to human and veterinary medicinal products | Variation Type Page 1 |
        | C.II(z) | Changes to Veterinary Medicinal Products: Other Variation | Variation Type Page 1 |

    @APL-0032D-1
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @APL-0032D-2
    Scenario: User selects change link for Variation Type
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Variation Type'
        When they select 'Variation Type change link'
        Then they will be directed to the 'Variation Type 2' page

    @APL-0032D-3
    Scenario: User selects change link for Article 5
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Article 5'
        When they select 'Article 5 change link'
        Then they will be directed to the 'Article 5' page

    @APL-0032D-4
    Scenario: User selects change link for Proposed changes
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Describe changes'
        When they select 'Describe changes change link'
        Then they will be directed to the 'Describe changes' page

    @APL-0032D-5
    Scenario Outline: User selects change variation link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change variation' link for 'Variation <Sub Code>'
        When they select 'change variation link'
        Then they will be directed to the 'Confirm Change Variation' page
        
    Examples: 
        | Sub Code | Description | Page |
        | A(z) | Other Variation | Variation Type Page 1 |
        | B.I.a.1(z) | Other variation | Variation Type Page 1 |
        | B.I.a.2(z) | Other variation | Variation Type Page 1 |
        | B.I.a.3(z) | Other variation | Variation Type Page 1 |
        | B.I.a.4(z) | Other variation | Variation Type Page 1 |
        | B.I.a.5(z) | Other variation | Variation Type Page 1 |
        | B.I.a(z) | Change in the manufacture of the active substance: Other variation | Variation Type Page 1 |
        | B.I.b.1(z) | Other variation | Variation Type Page 1 |
        | B.I.b.2(z) | Other variation | Variation Type Page 1 |
        | B.I.b(z) | Change in control of the active substance | Variation Type Page 1 |
        | B.I.c.1(z) | Other variation | Variation Type Page 1 |
        | B.I.c.2(z) | Other variation | Variation Type Page 1 |
        | B.I.c.3(z) | Other variation | Variation Type Page 1 |
        | B.I.c(z) | Change in container closure system of the active substance: Other variation | Variation Type Page 1 |
        | B.I.d.1(z) | Other variation | Variation Type Page 1 |
        | B.I.d(z) | Stability: Other variation | Variation Type Page 1 |
        | B.I.e.1(z) | Other variation | Variation Type Page 1 |
        | B.I.e.2(z) | Other variation | Variation Type Page 1 |
        | B.I.e.3(z) | Other variation | Variation Type Page 1 |
        | B.I.e.4(z) | Other variation | Variation Type Page 1 |
        | B.I.e.5(z) | Other variation | Variation Type Page 1 |
        | B.I.e(z) | Design space and post approval change management protocols. Other Variation | Variation Type Page 1 |
        | B.I(z) | Active substance: Other variation | Variation Type Page 1 |
        | B.II.a.1(z) | Other variation | Variation Type Page 1 |
        | B.II.a.2(z) | Other variation | Variation Type Page 1 |
        | B.II.a.3(z) | Other variation | Variation Type Page 1 |
        | B.II.a.4(z) | Other variation | Variation Type Page 1 |
        | B.II.a.5(z) | Other variation | Variation Type Page 1 |
        | B.II.a.6(z) | Other variation | Variation Type Page 1 |
        | B.II.a(z) | Change in description and composition of the final product: Other variation | Variation Type Page 1 |
        | B.II.b.1(z) | Other variation | Variation Type Page 1 |
        | B.II.b.2(z) | Other variation | Variation Type Page 1 |
        | B.II.b.3(z) | Other variation | Variation Type Page 1 |
        | B.II.b.4(z) | Other variation | Variation Type Page 1 |
        | B.II.b.5(z) | Other variation | Variation Type Page 1 |
        | B.II.b(z) | Change in the manufacture of the finished product | Variation Type Page 1 |
        | B.II.c.1(z) | Other variation | Variation Type Page 1 |
        | B.II.c.2(z) | Other variation | Variation Type Page 1 |
        | B.II.c.3(z) | Other variation | Variation Type Page 1 |
        | B.II.c.4(z) | Other variation | Variation Type Page 1 |
        | B.II.c(z) | Change in control of excipients in the finished product | Variation Type Page 1 |
        | B.II.d.1(z) | Other variation | Variation Type Page 1 |
        | B.II.d.2(z) | Other variation | Variation Type Page 1 |
        | B.II.d.3(z) | Other variation | Variation Type Page 1 |
        | B.II.d(z) | Change in control of the finished product: Other variation | Variation Type Page 1 |
        | B.II.e.1(z) | Other variation | Variation Type Page 1 |
        | B.II.e.2(z) | Other variation | Variation Type Page 1 |
        | B.II.e.3(z) | Other variation | Variation Type Page 1 |
        | B.II.e.4(z) | Other variation | Variation Type Page 1 |
        | B.II.e.5(z) | Other variation | Variation Type Page 1 |
        | B.II.e.6(z) | Other variation | Variation Type Page 1 |
        | B.II.e.7(z) | Other variation | Variation Type Page 1 |
        | B.II.e(z) | Change in the container closure system of the finished product: Other variation | Variation Type Page 1 |
        | B.II.f.1(z) | Other variation | Variation Type Page 1 |
        | B.II.f(z) | Stability: Other variation | Variation Type Page 1 |
        | B.II.g.1(z) | Other variation | Variation Type Page 1 |
        | B.II.g.2(z) | Other variation | Variation Type Page 1 |
        | B.II.g.3(z) | Other variation | Variation Type Page 1 |
        | B.II.g.4(z) | Other variation | Variation Type Page 1 |
        | B.II.g.5(z) | Other variation | Variation Type Page 1 |
        | B.II.g(z) | Design space and post approval change management protocols: Other variation | Variation Type Page 1 |
        | B.II.h.1(z) | Other variation | Variation Type Page 1 |
        | B.II.h(z) | Adventitious agents safety: Other variation | Variation Type Page 1 |
        | B.II(z) | Finished product: Other variation | Variation Type Page 1 |
        | B.III.1(z) | Other Variation | Variation Type Page 1 |
        | B.III.2(z) | Other Variation | Variation Type Page 1 |
        | B.III(z) | CEP/TSE/Monographs: Other variation | Variation Type Page 1 |
        | B.IV.1(z) | Other variation | Variation Type Page 1 |
        | B.IV.2(z) | Other variation | Variation Type Page 1 |
        | B.IV.3(z) | Other variation | Variation Type Page 1 |
        | B.IV(z) | Change in medical devices: Other Variation | Variation Type Page 1 |
        | B.V.a.1(z) | Other variation | Variation Type Page 1 |
        | B.V.a.2(z) | Other variation | Variation Type Page 1 |
        | B.V.b.1(z) | Other variation | Variation Type Page 1 |
        | B(z) | Other variation | Variation Type Page 1 |
        | C.I.1(z) | Other variation | Variation Type Page 1 |
        | C.I.2(z) | Other variation | Variation Type Page 1 |
        | C.I.4(z) | Other variation | Variation Type Page 1 |
        | C.I.6(z) | Other variation | Variation Type Page 1 |
        | C.I.7(z) | Other variation | Variation Type Page 1 |
        | C.I.9(z) | Other variation | Variation Type Page 1 |
        | C.I.11(z) | Other variation | Variation Type Page 1 |
        | C.I.12(z) | Other variation | Variation Type Page 1 |
        | C.I.13(z) | Other variation | Variation Type Page 1 |
        | C.I(z) | Other variation | Variation Type Page 1 |
        | C.I(z).1 | Changes (Safety/Efficacy) to human and veterinary medicinal products | Variation Type Page 1 |
        | C.II(z) | Changes to Veterinary Medicinal Products: Other Variation | Variation Type Page 1 |

    @APL-0032D-6
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page

    @APL-0032D-7
    Scenario: User selects 'Continue' option
        Given the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they will be directed to the 'Declaration' page