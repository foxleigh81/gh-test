Feature: User enters a second variation code
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-4012
        Jira: GS-252

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Group of IA changes' option and click continue
        And they are directed to the 'Variation Type IA Procedure Options' page
        And they select the 'Several changes to one product' option and click continue
        And they are directed to the 'Variation Type IA Several-Changes Multiple-Products Select-Product-2' page
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Type IA Several-Changes Multiple-Products Enter-Variation-Code' page
        And they select the 'IA.Only' option and click continue
        And they are directed to the 'Variation Type IA Several-Changes Multiple-Products Implementation-Date' page
        And they enter an 'implementation date' and click continue
        And they are directed to the 'Variation Type IA Several-Changes Multiple-Products Describe-Changes' page
        And they enter the 'Present' text
        And they enter the 'Proposed' text and click continue
        And they are directed to the 'Variation Type IA Several-Changes Multiple-Products Enter-Second-Variation-Code' page

    @EPL-4012-1
    Scenario: User enters a valid IA Only code in type ahead text field
        And they will see a page header 'Choose a second variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text 'IA.Only' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the 'Variation Type IA Several-Changes Multiple-Products Implementation-Date' page

    @EPL-4012-2
    Scenario: User enters a valid IA+IB Only code in type ahead text field
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text 'IA.IB' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the 'Variation Type IA Several-Changes Multiple-Products Implementation-Date' page

    @EPL-4012-3
    Scenario: User enters a valid Z Only code in type ahead text field
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text 'Z.Only' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the 'Variation Type IA Several-Changes Multiple-Products Implementation-Date' page

    @EPL-4012-4
    Scenario: User selects a common code radio option
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they select a radio button option and click continue
        Then they will be directed to the 'Variation Type IA Several-Changes Multiple-Products Implementation-Date'  page