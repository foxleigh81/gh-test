Feature: User enters a product which does not appear in the list on the Select product page
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-3005A

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Group of IA changes' option and click continue
        And they are directed to the 'Variation Type IA Procedure Options' page
        And they select the 'Several changes to one product' option and click continue
        And they are directed to the 'Variation Type IA Several-Changes Multiple-Products Select-Product-2' page
        # Need to navigate to manual product selection, not implemented yet

    @DPL-3005A-1
    Scenario: User enters product name and authorisation number and selects 'Continue'
        And they will see a page header 'Enter product to be varied'
        And they will see the 'Enter product name' text input box
        And they will see the 'Enter authorisation number' text input box
        And a 'Continue' button
        And they have entered a valid 'product name'
        And they have entered a valid 'authorisation number'
        When they select the 'Continue' option
        Then they are directed to the 'Variation Type IA Several-Changes One-Product Enter-Variation-Code' page

    @DPL-3005A-2
    Scenario: User enters either product name or authorisation number
        And they have entered a valid 'Continue'
        When they select 'You must enter product name and authorisation number'
        Then they will see an error message containing 
        And they will not be able to continue