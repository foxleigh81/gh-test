Feature: User enters a variation code
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-3007

    Background:
        Given startMaNavToTypeIASevChangesMultipleProductsSelection
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Type IA Several-Changes One-Product  Enter-Variation-Code' page

    @DPL-3007-1
    Scenario Outline: User enters a valid code in type ahead text field, code's group decides <destination>
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text '<Code>' into the text input with id 'Variation Code Picker' and press enter
        Then they are directed to the '<Destination>' page
        
    Examples: 
        | Code | Destination |
        | IA.Only.And.Common | Variation One-Change Multiple-Products Implementation-Date |
        | IA.IB.And.Common | Variation One-Change Multiple-Products Implementation-Date |
        | Z.Only.And.Common | Variation One-Change Multiple-Products Implementation-Date |

    @DPL-3007-2
    Scenario Outline: User selects a common code radio option, code's group decides <destination>
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they select the '<Code>' option and click continue
        Then they are directed to the '<Destination>' page
        
    Examples: 
        | Code | Destination |
        | IA.Only.And.Common | Variation Single One-Product Implementation Date |
        | IB.Only.And.Common | Variation Single One-Product Describe Changes |
        | Z.Only.And.Common | Variation Single One-Product Select Variation Type |

    @DPL-3007-3
    Scenario: User does not enter a valid code or select a radio button option
        When they click the 'Continue' button
        Then they are directed to the 'Please enter either a variation code/name, or select a common variation' page
        And they will see a warning message stating 'Variation Type IA Several-Changes One-Product Enter-Variation-Code'
        And they will not be able to continue