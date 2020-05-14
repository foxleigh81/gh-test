Feature: User enters a second variation code
    Description:
        Epic: Procedure G: IB/II - sev ch, sev rel prds 
        Reference: GPL-6012

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Group of IB/II changes' option and click continue
        And they are directed to the 'Variation Type IB/II Procedure-Options' page
        And they select the 'Several changes to several related products' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes Multiple-Products Select-Product-2' page
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes Multiple-Products Enter-Variation-Code' page
        And they select the 'IA.Only' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes Multiple-Products Implementation-Date' page
        And they enter an implementation date and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes Multiple-Products Describe-Changes' page
        And they enter the 'Present' text
        And they enter the 'Proposed' text and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes Multiple-Products Enter-Second-Variation-Code' page

    @GPL-6012-1
    Scenario Outline: User enters a valid code in type ahead text field, code's group decides <destination>
        And they will see a page header 'Choose a second variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text '<Code>' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the '<Destination>' page
        
    Examples: 
        | Code | Common | Destination |
        | IA.Only | IA.Only.And.Common | Variation Type IB/II Several-Changes Multiple-Products Implementation-Date |
        | IB.Only | IB.Only.And.Common | Variation Type IB/II Several-Changes Multiple-Products Describe-Changes |
        | II.Only |  | Variation Type IB/II Several-Changes Multiple-Products Describe-Changes |
        | Num.Variation |  | Variation Type IB/II Several-Changes Multiple-Products Describe-Changes |
        | Z.Special |  | Variation Type IB/II Several-Changes Multiple-Products Describe-Changes |
        | IA.IB |  | Variation Type IB/II Several-Changes Multiple-Products Select-Variation-Type |
        | Z.Only | Z.Only.And.Common | Variation Type IB/II Several-Changes Multiple-Products Select-Variation-Type |

    @GPL-6012-2
    Scenario Outline: User selects a common code radio option, code's group decides <destination>
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they select the '<Common>' option and click continue
        Then they will be directed to the '<Destination>' page
        
    Examples: 
        | Code | Common | Destination |
        | IA.Only | IA.Only.And.Common | Variation Type IB/II Several-Changes Multiple-Products Implementation-Date |
        | IB.Only | IB.Only.And.Common | Variation Type IB/II Several-Changes Multiple-Products Describe-Changes |
        | II.Only |  | Variation Type IB/II Several-Changes Multiple-Products Describe-Changes |
        | Num.Variation |  | Variation Type IB/II Several-Changes Multiple-Products Describe-Changes |
        | Z.Special |  | Variation Type IB/II Several-Changes Multiple-Products Describe-Changes |
        | IA.IB |  | Variation Type IB/II Several-Changes Multiple-Products Select-Variation-Type |
        | Z.Only | Z.Only.And.Common | Variation Type IB/II Several-Changes Multiple-Products Select-Variation-Type |

    @GPL-6012-3
    Scenario: User does not enter a valid code or select a radio button option
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Type IB/II Several-Changes Multiple-Products Enter-Variation-Code' page
        And they will see a warning message stating 'Enter either a variation code, name, or select a common variation'
        And they will not be able to continue
        When they enter the text 'Z.Only' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the 'Variation Type IB/II Several-Changes Multiple-Products Implementation-Date' page