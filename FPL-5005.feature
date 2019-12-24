Feature: User selects product to be varied
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5005
        Jira: GS-509

    Background:
        Given the user has completed the PL-5003 steps

    @FPL-5005-1
    @TestData::KetaminePlus
    Scenario: User directed to 'Select Product 1' page 
        And the user has been directed to the 'Select product 1' page
        When page 'Select product 1' loads
        Then a page header 'Vary a marketing authorisation'
        And they will see at least 'Select product to be varied' radio button option(s)
        And a table with headers 2, 'Select' and 'Authorisation Number'
        And a table with a row containing a radio button and values 'Product name' and '12345/1234'
        And they will see a 'Product not listed' link
        And they will see a 'Continue' option

    @FPL-5005-2
    Scenario: User selects 'Product To Be Varied'
        And the user has been directed to the 'Select product 1' page
        And the user has selected 'Product 1'
        When they select 'Continue'
        Then they are directed to the 'Enter Variation Code' page

    @FPL-5005-3
    Scenario: User does not select a product
        And the user has been directed to the 'Select product 1' page
        And they have not selected any 'Products'
        When they select 'Continue'
        Then they will see an error message containing 'Select a product to continue'
        And they will not be able to continue

    @FPL-5005-4
    Scenario: User selects 'Product not listed' link
        And the user can see a 'Product not listed' link
        When the user has selected the link 'Product not listed'
        Then they are directed to the 'Enter Product 1' page