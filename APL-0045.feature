Feature: User who has entered a valid code from Data Table 'No Variations' checks, and is able to change answers
    Description:
        Reference: APL-0045
        Jira: GS-82

    Background: Given the user has completed the GS-80 steps

    @APL-0045
    Scenario Outline: User who has entered a valid code from Data table No Variations is directed to the 'Check your answers' page
        Given the user has been directed to the 'Check Your Answers' page
        And they have entered a variation code from Data Table 'No Variations'
        When page 'Check Your Answers' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'MA variation'
        And a page header 'Check your answers before submitting'
        And a section header 'Product Details'
        And a table with a row with the list item 'Procedure Type' and the 'selected procedure type' displayed and a change link
        And a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed and a change link
        And a table with a row with the list item 'Products' and the 'selected product' displayed and a change link
        And a section header 'Variation Details'
        And a list header 'Variation 1'
        And a table with a row with the list item 'Code' and the '<Sub Code>' displayed 
        And a table with a row with the list item 'Description' and the 'Variation description' displayed and a change link
        And a table with a row with the list item 'Variation Type' and the 'N/a' displayed and a change link
        And a table with a row with the list item 'Present' and the 'present text' displayed and a change link
        And a table with a row with the list item 'Proposed' and the 'proposed change text' displayed and a change link
        And a section header 'Supporting Documents' with a 'Change' link
        And a table with a row with the list item 'Label/ Package leaflet text (QRD). If your variation affects the labelling and/ or package leaflet (QRD text). Please provide proposed versions (in editable Word format) for each product included in the application; do not provide mock-ups at this stage' and the 'selection status' displayed 
        And a table with a row with the list item 'Mock-Ups, if applicable. Only provide mock-ups if your variation is for the approval of mock-ups, e.g. C.II.6(b)' and the 'selection status' displayed 
        And a table with a row with the list item 'Copy of the relevant page(s) from the Variation Guideline for the change(s) with the relevant boxes for conditions and documentation ticked' and the 'selection status' displayed 
        And a table with a row with the list item 'Summary of the product characteristics (SPC), if applicable. If your variation affects the SPC, please provide proposed versions (in editable Word format) for each product included in the application' and the 'selection status' displayed 
        And a table with a row with the list item 'Omitted Documents' and the 'omitted documents text' displayed 
        And a table with a row with the list item Other Information' and the 'other information text' displayed 
        And a section header 'Contact Details' with a 'Change' link
        And a table with a row with the list item 'Contact name' and the 'entered contact name' displayed 
        And a table with a row with the list item 'Purchase order number' and the 'entered purchase order number' displayed 
        And a table with a row with the list item 'Contact number' and the 'entered contact number' displayed 
        And a table with a row with the list item 'Contact email address' and the 'entered contact email address' displayed 
        And a table with a row with the list item 'Invoice email address' and the 'entered invoice email address' displayed 
        And a table with a row with the list item 'Further comments' and the 'further comments text'  displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | 1(a) | Replacement of a chemical active substance by a different salt/ester complex/derivative, with the same therapeutic moiety, where the efficacy/safety characteristics are not significantly different | Describe Changes |
        | 1(b) | Replacement by a different isomer, a different mixture of isomers, of a mixture by an isolated isomer (e.g. racemate by a single enantiomer), where the efficacy/safety characteristics are not significantly different; | Describe Changes |
        | 1(c) | Replacement of a biological active substance with one of a slightly different molecular structure where the efficacy/safety characteristics are not significantly different, with the exception of: | Describe Changes |
        | 1(c).(i) | Changes to the active substance of a seasonal, pre-pandemic or pandemic vaccine against human influenza; | Describe Changes |
        | 1(c).(ii) | Replacement or addition of a serotype, strain, antigen or combination of serotypes, strains or antigens for a veterinary vaccine against avian influenza, foot-and-mouth disease or bluetongue; | Describe Changes |
        | 1(c).(iii) | Replacement of a strain for a veterinary vaccine against equine influenza; | Describe Changes |
        | 1(d) | Modification of the vector used to produce the antigen or the source material, including a new master cell bank from a different source, where the efficacy/safety characteristics are not significantly different; | Describe Changes |
        | 1(e) | A new ligand or coupling mechanism for a radiopharmaceutical, where the efficacy/safety characteristics are not significantly different; | Describe Changes |
        | 1(f) | Change to the extraction solvent or the ratio of herbal drug to herbal drug preparation where the efficacy/safety characteristics are not significantly different. | Describe Changes |
        | 2(a) | Change of bioavailability | Describe Changes |
        | 2(b) | Change of pharmakinetics | Describe Changes |
        | 2(c) | Change of bioavailability | Describe Changes |
        | 2(d) | Change or addition of a new strength/potency | Describe Changes |
        | 2(e) | Change or addition of a new route of administration | Describe Changes |
        | 3 | Other changes specific to veterinary medicinal products to be administered to food-producing animals: change or addition of target species | Describe Changes |

    @APL-0045-1
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @APL-0045-2
    Scenario: User selects change link for Proposed changes
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they will be directed to the 'Describe changes' page

    @APL-0045-3
    Scenario Outline: User selects change variation link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change variation' link for 'Variation <Sub Code>'
        When they select 'change variation link'
        Then they will be directed to the 'Confirm Change Variation' page
        
    Examples: 
        | Sub Code | Description | Page |
        | 1(a) | Replacement of a chemical active substance by a different salt/ester complex/derivative, with the same therapeutic moiety, where the efficacy/safety characteristics are not significantly different | Describe Changes |
        | 1(b) | Replacement by a different isomer, a different mixture of isomers, of a mixture by an isolated isomer (e.g. racemate by a single enantiomer), where the efficacy/safety characteristics are not significantly different; | Describe Changes |
        | 1(c) | Replacement of a biological active substance with one of a slightly different molecular structure where the efficacy/safety characteristics are not significantly different, with the exception of: | Describe Changes |
        | 1(c).(i) | Changes to the active substance of a seasonal, pre-pandemic or pandemic vaccine against human influenza; | Describe Changes |
        | 1(c).(ii) | Replacement or addition of a serotype, strain, antigen or combination of serotypes, strains or antigens for a veterinary vaccine against avian influenza, foot-and-mouth disease or bluetongue; | Describe Changes |
        | 1(c).(iii) | Replacement of a strain for a veterinary vaccine against equine influenza; | Describe Changes |
        | 1(d) | Modification of the vector used to produce the antigen or the source material, including a new master cell bank from a different source, where the efficacy/safety characteristics are not significantly different; | Describe Changes |
        | 1(e) | A new ligand or coupling mechanism for a radiopharmaceutical, where the efficacy/safety characteristics are not significantly different; | Describe Changes |
        | 1(f) | Change to the extraction solvent or the ratio of herbal drug to herbal drug preparation where the efficacy/safety characteristics are not significantly different. | Describe Changes |
        | 2(a) | Change of bioavailability | Describe Changes |
        | 2(b) | Change of pharmakinetics | Describe Changes |
        | 2(c) | Change of bioavailability | Describe Changes |
        | 2(d) | Change or addition of a new strength/potency | Describe Changes |
        | 2(e) | Change or addition of a new route of administration | Describe Changes |
        | 3 | Other changes specific to veterinary medicinal products to be administered to food-producing animals: change or addition of target species | Describe Changes |

    @APL-0045-4
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page

    @APL-0045-5
    Scenario: User selects 'Continue' option
        Given the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they will be directed to the 'Declaration' page