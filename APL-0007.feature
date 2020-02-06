Feature: User enters a variation code
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0007
        Jira: GS-6

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Single' option and click continue
        And they are directed to the 'Variation Single Procedure Options' page
        And they select the 'One change to one product' option and click continue
        And they are directed to the 'Variation Single One-Product Select-Product-1' page
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Single One-Product Enter Variation Code' page

    @APL-0007-1
    Scenario Outline: User enters a valid code in type ahead text field, code's group decides <destination>
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text '<Code>' into the text input with id 'Variation Code Picker' and press enter
        Then they are directed to the '<Destination>' page
        
    Examples: 
        | Code | Destination |
        | IA.Only.And.Common | Variation Single One-Product Implementation Date |
        | IB.Only.And.Common | Variation Single One-Product Describe Changes |
        | II.Only | Variation Single One-Product Describe Changes |
        | Num.Variation | Variation Single One-Product Describe Changes |
        | Z.Special | Variation Single One-Product Describe Changes |
        | IA.IB | Variation Single One-Product Select Variation Type |
        | Z.Only.And.Common | Variation Single One-Product Select Variation Type |

    @APL-0007-2
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

    @APL-0007-3
    Scenario: User does not enter a valid code or select a radio button option
        When they click the 'Continue' button
        Then they are directed to the 'Variation Single One-Product Enter Variation Code' page
        And they will see a warning message stating 'Please enter either a variation code/name, or select a common variation'
        And they will not be able to continue