Feature: User enters products which do not appear in the list on the Select product 2 page
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-9005A
        Jira: GS-378

    Background:
        Given the user has completed the PL-9005 steps

    @EPL-9005A-1
    Scenario: User is directed to the Enter Products 2 page
        And the user has been directed to the 'Enter Products 2' page
        When page ' Enter Products 2' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Enter products to be varied'
        And they will see the mandatory 'Enter product name' text input box
        And they will see the mandatory 'Enter authorisation number' text input box
        And a table with headers 'Product name', MISSING VALUE and MISSING VALUE
        And they will see a 'Add this product' option
        And they will see a 'Continue' option

    @EPL-9005A-2
    @TestData::KetaminePlus
    Scenario: User who has previously selected a product, is directed to the Enter Products 2 page
        And the user has been directed to the 'Enter Products 2' page
        And they have selected a product on the 'Product 2' page
        When page 'Enter Products 2' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Enter products to be varied'
        And they will see the mandatory 'Enter product name' text input box
        And they will see the mandatory 'Enter authorisation number' text input box
        And a table with headers 'Product name', MISSING VALUE and MISSING VALUE
        And a table with a row with values 'Authorisation number' and MISSING VALUE and a remove link
        And they will see a 'Add this product' option
        And they will see a 'Continue' option

    @EPL-9005A-3
    @TestData::KetaminePlus
    Scenario: User enters product name and authorisation number
        And the user has been directed to the 'Enter Products 2' page
        And they have entered a valid 'product name'
        And they have entered a valid 'authorisation number'
        When they select the 'Add this product' option
        Then they will be directed back to the Enter products 2' page
        And a table with a row with values 'Ketamine Surprise' and MISSING VALUE and a remove link

    @EPL-9005A-4
    Scenario: User adds at least two products
        And the user is on the 'Enter Products 2' page
        And there are at least 2 MISSING VALUE in the table
        When they select 'products'
        Then they are directed to the 'Continue' page

    @EPL-9005A-5
    Scenario: User enters either product name or authorisation number
        And the user has been directed to the 'Enter Products 2' page
        And one or more mandatory fields are empty
        When they select 'Add this product'
        Then they will see an error message containing 'You must enter product name and authorisation number'
        And they will not be able to continue

    @EPL-9005A-6
    Scenario: User who has not previously selected a product, enters one product only
        And the user has been directed to the 'Enter Products 2' page
        And they have not selected a product on the 'Product 2' page
        And they have not added at least 2 products on the MISSING VALUE page
        When they select 'Enter Products 2'
        Then they will see an error message containing 'Continue'
        And they will not be able to continue

    @EPL-9005A-7
    Scenario: User removes a product
        And the user can see a 'Remove' link
        When they select 'Remove'
        Then they will be directed back to the 'Enter Products 2' page
        And the 'product' will no longer appear in the table