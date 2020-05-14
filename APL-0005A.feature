Feature: User enters a product which does not appear in the list on the Select product page
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0005A
        Jira: GS-5

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Single' option and click continue
        And they are directed to the 'Variation Single Procedure-Options' page
        And they select the 'One change to one product' option and click continue
        And they are directed to the 'Variation Single One-Product Select-Product-1' page
        And they select the 'Enter details for products not listed' link
        And they are directed to the 'Variation Single One-Product Enter-Product-1' page

    @APL-0005A-1
    Scenario: User enters product name and authorisation number and selects 'Continue'
        And they will see a page header 'Enter product to be varied'
        And they will see the 'Enter product name' text input box
        And they will see the 'Enter product's UK authorisation number' text input box
        And a 'Continue' button
        And they have entered 'product name'
        And they have entered 'authorisation number'
        When they select the 'Continue' option
        Then they are directed to the 'Variation Single One-Product Enter-Variation-Code' page

    @APL-0005A-2
    Scenario: User enters either product name or authorisation number
        And they have entered 'product name'
        When they select 'Continue'
        Then they will see an error message containing 'You must enter product name and authorisation number'
        And they will not be able to continue