Feature: User selects the variation type
    Description:
        Epic: Procedure F: IB/II - sev ch, 1  prd 
        Reference: FPL-5008
        Jira: GS-512

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Group of IB/II changes' option and click continue
        And they are directed to the 'Variation Type IB/II Procedure-Options' page
        And they select the 'Several changes to one product' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Product-1' page
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Enter-Variation-Code' page

    @FPL-5008-1
    Scenario: User selects variation type IA, having previously selected 'IAIB' group code
        And they enter the text 'IA.IB' into the text input with id 'variation code picker' and click Continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Variation-Type' page
        And they will see a page header 'Select-Variation-Type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they select the 'IA' option and click continue
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Implementation-Date' page

    @FPL-5008-2
    Scenario: User selects variation type IB, having previously selected 'IAIB' group code
        And they enter the text 'IA.IB' into the text input with id 'variation code picker' and click Continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Variation-Type' page
        And they will see a page header 'Select-Variation-Type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they select the 'IB' option and click continue
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Describe-Changes' page

    @FPL-5008-3
    Scenario: User doesnt select code and clicks continue, having previously selected 'IAIB' group code
        And they enter the text 'IA.IB' into the text input with id 'variation code picker' and click Continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Variation-Type' page
        And they will see a page header 'Select-Variation-Type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Variation-Type' page
        And they will see a warning message stating 'Select a variation type'
        And they will not be able to continue

    @FPL-5008-4
    Scenario: User selects variation type IA, having previously selected 'Z Only' group code
        And they enter the text 'Z.Only' into the text input with id 'variation code picker' and click Continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Variation-Type' page
        And they will see a page header 'Select-Variation-Type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a radio button option for 'II'
        And a 'Continue' button
        When they select the 'IA' option and click continue
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Implementation-Date' page

    @FPL-5008-5
    Scenario: User selects variation type IB, having previously selected 'Z Only' group code
        And they enter the text 'Z.Only' into the text input with id 'variation code picker' and click Continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Variation-Type' page
        And they will see a page header 'Select-Variation-Type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a radio button option for 'II'
        And a 'Continue' button
        When they select the 'IB' option and click continue
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Article-5' page

    @FPL-5008-6
    Scenario: User selects variation type II, having previously selected 'Z Only' group code
        And they enter the text 'Z.Only' into the text input with id 'variation code picker' and click Continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Variation-Type' page
        And they will see a page header 'Select-Variation-Type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a radio button option for 'II'
        And a 'Continue' button
        When they select the 'II' option and click continue
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Article-5' page

    @FPL-5008-7
    Scenario: User doesnt select code and clicks continue, having previously selected 'Z Only' group code
        And they select the 'Z.Only.And.Common' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Variation-Type' page
        And they will see a page header 'Select-Variation-Type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Variation-Type' page
        And they will see a warning message stating 'Select a variation type'
        And they will not be able to continue

    @FPL-5008-8
    Scenario: User navigates to page, having previously selected 'IA Only' group code
        And they select the 'IA.Only.And.Common' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Implementation-Date' page
        When they navigate to the 'Variation Type IB/II Several-Changes One-Product Select-Variation-Type' page
        And they will see a page title with the value 'Sorry, there is a problem with the service'