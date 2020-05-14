Feature: User enters a variation code
    Description:
        Epic: Procedure I: Workshare Sev ch, sev un prds
        Reference: IPL-8007

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Workshare' option and click continue
        And they are directed to the 'Variation Workshare Procedure Options' page
        And they select the 'Several changes to several unrelated products' option and click continue
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Select-Product-2' page
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Enter Variation Code' page

    @IPL-8007-1
    Scenario Outline: User enters a valid code in type ahead text field, code's group decides <destination>
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text '<Code>' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the '<Destination>' page
        
    Examples: 
        | Code | Common | Destination |
        | IA.Only | IA.Only.And.Common | Variation Workshare Several-Changes Multiple-Products Implementation-Date |
        | IB.Only | IB.Only.And.Common | Variation Workshare Several-Changes Multiple-Products Describe-Changes |
        | II.Only |  | Variation Workshare Several-Changes Multiple-Products Describe-Changes |
        | Num.Variation |  | Variation Workshare Several-Changes Multiple-Products Describe-Changes |
        | Z.Special |  | Variation Workshare Several-Changes Multiple-Products Describe-Changes |
        | IA.IB |  | Variation Workshare Several-Changes Multiple-Products Select Variation Type |
        | Z.Only | Z.Only.And.Common | Variation Workshare Several-Changes Multiple-ProductsSelect Variation Type |

    @IPL-8007-2
    Scenario Outline: User selects a common code radio option, code's group decides <destination>
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they select the '<Common>' option and click continue
        Then they will be directed to the '<Destination>' page
        
    Examples: 
        | Code | Common | Destination |
        | IA.Only | IA.Only.And.Common | Variation Workshare Several-Changes Multiple-Products Implementation-Date |
        | IB.Only | IB.Only.And.Common | Variation Workshare Several-Changes Multiple-Products Describe-Changes |
        | II.Only |  | Variation Workshare Several-Changes Multiple-Products Describe-Changes |
        | Num.Variation |  | Variation Workshare Several-Changes Multiple-Products Describe-Changes |
        | Z.Special |  | Variation Workshare Several-Changes Multiple-Products Describe-Changes |
        | IA.IB |  | Variation Workshare Several-Changes Multiple-Products Select Variation Type |
        | Z.Only | Z.Only.And.Common | Variation Workshare Several-Changes Multiple-ProductsSelect Variation Type |

    @IPL-8007-3
    Scenario: User does not enter a valid code or select a radio button option
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Workshare Several-Changes Multiple-Products Enter-Variation-Code' page
        And they will see a warning message stating 'Enter either a variation code, name, or select a common variation'
        And they will not be able to continue
        When they enter the text 'Z.Only' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the 'Variation Workshare Several-Changes Multiple-Products Implementation-Date' page