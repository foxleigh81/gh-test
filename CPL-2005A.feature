Feature: User enters products which do not appear in the list on the Select product 2 page
    Description:
        Reference: CPL-2005A
        Jira: GS-173

    Background: Given the user has completed the GS-172 steps

    @CPL-2005A
    Scenario: User is directed to the Enter Products 2 page
        Given the user has been directed to the 'Enter Products 2' page
        When page ' Enter Products 2' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Enter products to be varied'
        And they will see the mandatory 'Enter product name' text input box
        And they will see the mandatory 'Enter authorisation number' text input box
        And a table with headers 'Product name', 'Authorisation number' and 'Action'
        And they will see a 'Add this product' option
        And they will see a 'Continue' option

    @CPL-2005A-1
    @TestData::KetaminePlus
    Scenario: User who has previously selected a product, is directed to the Enter Products 2 page
        Given the user has been directed to the 'Enter Products 2' page
        And they have selected a product on the 'Product 2' page
        When page 'Enter Products 2' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Enter products to be varied'
        And they will see the mandatory 'Enter product name' text input box
        And they will see the mandatory 'Enter authorisation number' text input box
        And a table with headers 'Product name', 'Authorisation number' and 'Action'
        And a table with a row with values 'Ketamine Surprise' and '12345/1234' and a remove link
        And they will see a 'Add this product' option
        And they will see a 'Continue' option

    @CPL-2005A-2
    @TestData::KetaminePlus
    Scenario: User enters product name and authorisation number
        Given the user has been directed to the 'Enter Products 2' page
        And they have entered a valid 'product name'
        And they have entered a valid 'authorisation number'
        When they select the 'Add this product' option
        Then they will be directed back to the Enter products 2' page
        And a table with a row with values 'Ketamine Surprise' and '12345/1234' and a remove link

    @CPL-2005A-3
    Scenario: User adds at least two products
        Given the user is on the 'Enter Products 2' page
        And there are at least 2 'products' in the table
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @CPL-2005A-4
    Scenario: User enters either product name or authorisation number
        Given the user has been directed to the 'Enter Products 2' page
        And one or more mandatory fields are empty
        When they select 'Add this product'
        Then they will see an error message containing 'You must enter product name and authorisation number'
        And they will not be able to continue

    @CPL-2005A-5
    Scenario: User who has not previously selected a product, enters one product only
        Given the user has been directed to the 'Enter Products 2' page
        And they have not selected a product on the 'Product 2' page
        And they have not added at least 2 products on the 'Enter Products 2' page
        When they select 'Continue'
        Then they will see an error message containing 'You must add at least two products'
        And they will not be able to continue

    @CPL-2005A-6
    Scenario: User removes a product
        Given the user can see a 'Remove' link
        When they select 'Remove'
        Then they will be directed back to the 'Enter Products 2' page
        And the 'product' will no longer appear in the table