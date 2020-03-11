Feature: User is prompted to add another variation
    Description:
        Epic: Procedure G: IB/II - sev ch, sev rel prds 
        Reference: GPL-6014

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Type IB/II Several-Changes Multiple-Products Add-Another-Variation-Code' page
        And they can see a page header 'Add another variation?'
        And they can see a radio button option for 'Yes'
        And they can see a radio button option for 'No'

    @GPL-6014-1
    Scenario: User adds another variation
        When they select the 'Yes' option and click continue
        Then they are directed to the 'Variation Type IB/II Several-Changes Multiple-Products Enter-Variation-Code' page

    @GPL-6014-2
    Scenario: User does not add another variation
        When they select the 'No' option and click continue
        Then they are directed to the 'Variation Type IB/II Several-Changes Multiple-Products Supporting-Documents' page

    @GPL-6014-3
    Scenario: User does not select either redio button option
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IB/II Several-Changes Multiple-Products Add-Another-Variation-Code' page
        And they will see a warning message stating 'Select an option to continue'
        And they will not be able to continue