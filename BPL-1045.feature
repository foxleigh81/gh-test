Feature: User who has entered a valid code from Data Table 'No Variations' checks, and is able to change answers
    Description:
        Reference: BPL-1045
    
    Background: Given the user has completed the PL-1044C steps

    @BPL-1045
    Scenario Outline: User who has entered a valid code from Data table No Variations is directed to the 'Check your answers' page
        Given the user has been directed to the 'Check Your Answers' page
        And they have entered a value from Data Table 'Data Table No Variations'
        When page 'Check Your Answers' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a page header 'Check Your Answers'
        And a sub header 'MA variation'
        And they will see the 'Product' displayed with a change link
        And they will see the 'Procedure Type' displayed 
        And they will see the 'Procedure Option' displayed 
        And they will see the 'Variation <Sub Code>' displayed with a change variation link
        And they will see the 'Proposed changes' displayed with a change link
        And a list header 'Supporting Documents' displayed with a change link
        And they will see the 'Omitted Documents' displayed 
        And they will see the 'Other Information' displayed 
        And a list header 'Contact Details' displayed with a change link
        And they will see the 'Contact Name' displayed 
        And they will see the Purchase Order Number' displayed 
        And they will see the 'Contact Number' displayed 
        And they will see the 'Contact Email Address' displayed 
        And they will see the 'Invoice Email Address' displayed 
        And they will see the 'Further Comments' displayed 
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

    @BPL-1045-1
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @BPL-1045-2
    Scenario: User selects change link for Proposed changes
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they will be directed to the 'Describe changes' page

    @BPL-1045-3
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

    @BPL-1045-4
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page

    @BPL-1045-5
    Scenario: User selects 'Continue' option
        Given the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they will be directed to the 'Declaration' page