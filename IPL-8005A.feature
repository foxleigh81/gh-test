Feature: User enters a product which does not appear in the list on the Select product page
    Description:
        Epic: Procedure I: Workshare Sev ch, sev un prds
        Reference: IPL-8005A

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Workshare' option and click continue
        And they are directed to the 'Variation Workshare Procedure Options' page
        And they select the 'Several changes to several unrelated products' option and click continue
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Select-Product-2' page
        And they select the 'Enter details for products not listed' link
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Enter-Products-2' page

    @IPL-8005A-1
    Scenario: User enters product name and authorisation number and selects 'Continue'
        And they will see a page header 'Enter product to be varied'
        And they will see the 'Enter product name' text input box
        And they will see the 'Enter authorisation number' text input box
        And a 'Continue' button
        And they have entered a valid 'product name'
        And they have entered a valid 'authorisation number'
        When they select the 'Continue' option
        Then they are directed to the 'Variation Workshare Several-Changes Multiple-Products Enter-Variation-Code' page

    @IPL-8005A-2
    Scenario: User enters either product name or authorisation number
        And they have entered a valid 'product name'
        When they select 'Continue'
        Then they will see an error message containing 'You must enter product name and authorisation number'
        And they will not be able to continue