Feature: User who has entered a valid code from Data Table 'No Variations' changes the variation
    Description:
        Reference: APL-0045A

    Background: Given the user has completed the PL-0045 steps

    @APL-0045A
    Scenario Outline: User who has entered a valid code from Data Table 'No Variations' is directed to 'Confirm Change Variation' page 
        Given the user has been directed to the 'Confirm Change Variation' page
        When page 'Confirm Change Variation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing variation'
        And a page header 'Are you sure you want to change'
        And they will see the 'Variation <Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
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

    @APL-0045A-1
    Scenario: User selects 'Yes' option
        Given the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @APL-0045A-2
    Scenario: User selects 'No' option
        Given the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they will be directed to the 'Check Your Answers' page

    @APL-0045A-3
    Scenario: User does not select an option
        Given the user has been directed to the 'Confirm Change Variation' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue