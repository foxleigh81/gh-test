Feature: User enters a product which does not appear in the list on the Select product page
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-3005A

    Background:
        Given startMaNavToTypeIASevChangesMultipleProductsSelection
        # Need to navigate to manual product selection, not implemented yet

    @DPL-3005A-1
    @TestData::Y
    Scenario: User is directed to the Enter Product 1 page
        And the user has been directed to the 'Enter Product 1' page
        When page 'Enter Product 1' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Enter product to be varied'
        And they will see the mandatory 'Enter product name' text input box
        And they will see the mandatory 'Enter authorisation number' text input box
        And they will see a 'Continue' option

    @DPL-3005A-2
    @TestData::Y
    Scenario: User enters product name and authorisation number and selects 'Continue'
        And the user has been directed to the 'Enter Product 1' page
        And they have entered a valid 'product name'
        And they have entered a valid 'authorisation number'
        When they select the 'Continue' option
        Then they are directed to the 'Enter Variation Code' page

    @DPL-3005A-3
    @TestData::Y
    Scenario: User enters either product name or authorisation number
        And the user has been directed to the 'Enter Product 1' page
        And one or more mandatory fields are empty
        When they select 'Continue'
        Then they will see an error message containing 'You must enter product name and authorisation number'
        And they will not be able to continue

    @DPL-3005A-4
    @TestData::Y
    Scenario: User removes a product
        And the user can see a 'Remove' link
        When they select 'Remove'
        Then they will be directed back to the 'Enter Product 1' page
        And the 'product' will no longer appear in the table