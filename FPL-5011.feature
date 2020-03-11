Feature: User describes proposed changes
    Description:
        Epic: Procedure F: IB/II - sev ch, 1  prd 
        Reference: FPL-5011
        Jira: GS-516

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
        And they select the 'IA.Only' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Implementation-Date' page
        And they enter an implementation date and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Describe-Changes' page

    @FPL-5011-1
    Scenario: User Enters describes proposed changes
        And they enter the text 'Present' into the 'Present Situation' text area
        And they enter the text 'Proposed' into the 'Proposed Solution' text area
        When they click the 'Continue' button
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Enter-Second-Variation-Code' page

    @FPL-5011-2
    Scenario: User does not enter text for present situtation or proposed solution
        When they click the 'Continue' button
        Then they will see a warning message stating 'Please outline the present situation'
        And they will see a warning message stating 'Please outline the proposed solution'
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Describe-Changes' page

    @FPL-5011-3
    Scenario: User does not enter text for present situation
        And they enter the text 'Proposed' into the 'Proposed Solution' text area
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Describe-Changes' page
        And they will see a warning message stating 'Please outline the present situation'
        And they will not be able to continue

    @FPL-5011-4
    Scenario: User does not enter text for proposed solution
        And they enter the text 'Present' into the 'Present Situation' text area
        When they click the 'Continue' button
        Then they are directed to the 'Please outline the proposed solution' page
        And they will see a warning message stating 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will not be able to continue