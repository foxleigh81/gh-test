Feature: User selects product to be varied
    Description:
        Reference: EPL-9005

    Background: Given the user has completed the PL-9003 steps

    @EPL-9005
    @TestData::KetaminePlus
    Scenario: User directed to 'Select Product 2' page 
        Given the user has been directed to the 'Select product 2' page
        When page 'Select product 2' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Select products to be varied'
        And they will see Text 'You must select more than one product'
        And they will see at least 2 checkbox options
        And a table with headers 'Select', 'Authorisation Number' and 'Product name'
        And a table with a row containing a checkbox and values '12345/1234' and 'Ketamine Surprise'
        And they will see a 'Product not listed' link
        And they will see a 'Continue' option

    @EPL-9005-1
    Scenario: User selects 'Products To Be Varied'
        Given the user has been directed to the 'Select Product 2'' page
        And they have selected at least 2 checkbox options
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @EPL-9005-2
    Scenario: User does not select a product
        Given the user has been directed to the 'Select Product 2'' page
        And they have not selected at least 2 checkbox options
        When they select 'Continue'
        Then they will see an error message containing 'You must select at least two products'
        And they will not be able to continue

    @EPL-9005-3
    Scenario: User selects 'Product not listed' link
        Given they can see a 'Product not listed' link
        When the user has selected the link 'Product not listed'
        Then they will be directed to the 'Enter Products 2' page