Feature: User enters a variation code
    Description:
        Epic: Procedure C:  IA changes - 1 ch, sev un prds 
        Reference: CPL-2007
        Jira: GS-192

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Group of IA changes' option and click continue
        And they are directed to the 'Variation Type IA Procedure Options' page
        And they select the 'One change to several unrelated products' option and click continue
        And they are directed to the 'Variation Type IA One-Change Multiple-Products Select-Product-2' page
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Type IA One-Change Multiple-Products Enter-Variation-Code' page

    @CPL-2007-1
    Scenario: User enters a valid IA Only code in type ahead text field
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text 'IA.Only' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the 'Variation Type IA One-Change Multiple-Products Implementation-Date' page

    @CPL-2007-2
    Scenario: User enters a valid IA+IB Only code in type ahead text field
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text 'IA.IB' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the 'Variation Type IA One-Change Multiple-Products Implementation-Date' page

    @CPL-2007-3
    Scenario: User enters a valid Z Only code in type ahead text field
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text 'Z.Only' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the 'Variation Type IA One-Change Multiple-Products Implementation-Date' page

    @CPL-2007-4
    Scenario: User selects a common code radio option
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they select a radio button option and click continue
        Then they will be directed to the 'Variation Type IA One-Change Multiple-Products Implementation-Date' page

    @CPL-2007-5
    Scenario: User does not enter a valid code or select a radio button option
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Type IA One-Change Multiple-Products Enter-Variation-Code' page
        And they will see a warning message stating 'Enter either a variation code/name, or select a common variation'
        And they will not be able to continue