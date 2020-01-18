Feature: User enters a variation code
    Description:
        Epic: Procedure C:  IA changes - 1 ch, sev un prds 
        Reference: CPL-2007
        Jira: GS-192

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Group of IA changes' option and click continue
        And they are directed to the 'Variation Type IA Procedure Options' page
        And they select the 'One change to one product' option and click continue
        And they are directed to the 'Variation Type IA One Change Multiple-Products Select Products' page
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Type IA One Change Multiple-Products Enter-Variation-Code' page

    @CPL-2007-1
    Scenario Outline: User enters a valid code in type ahead text field, code's group decides <destination>
        And a page header 'Choose a variation'
        And a sub header 'Enter variation code or name'
        And a sub header 'Select a common variation'
        When they enter the text '<Code>' into the text input with id 'Variation Code Picker' and press enter
        Then they are directed to the '<Destination>' page
        
    Examples: 
        | Code | Destination |
        | IA.Only.And.Common | Variation One-Change Multiple-Products Implementation-Date |
        | IA.IB.And.Common | Variation One-Change Multiple-Products Implementation-Date |
        | Z.Only.And.Common | Variation One-Change Multiple-Products Implementation-Date |

    @CPL-2007-2
    Scenario Outline: User selects a common code radio option, code's group decides <destination>
        And a page header 'Choose a variation'
        And a sub header 'Enter variation code or name'
        And a sub header 'Select a common variation'
        When they select the '<Code>' option and click continue
        Then they are directed to the '<Destination>' page
        
    Examples: 
        | Code | Destination |
        | IA.Only.And.Common | Variation One-Change Multiple-Products Implementation-Date |
        | IA.IB.And.Common | Variation One-Change Multiple-Products Implementation-Date |
        | Z.Only.And.Common | Variation One-Change Multiple-Products Implementation-Date |

    @CPL-2007-3
    Scenario: User does not enter a valid code or select a radio button option
        When they click the 'Continue' button
        Then they are directed to the 'Please enter either a variation code/name, or select a common variation' page
        And they will see a warning message stating 'Variation Type IA One-Change Multiple-Products Enter-Variation-Code'