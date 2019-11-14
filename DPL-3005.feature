Feature: User selects product to be varied
    Description:
        Reference: DPL-3005
    
    Background: Given the user has completed the PL-3003 steps

    @DPL-3005
    @TestData::KetaminePlus
    Scenario: User directed to 'Select Product 1' page 
        Given the user has been directed to the 'Select product 1' page
        When page 'Select product 1' loads
        Then they will see a page header 'Vary a marketing authorisation'
        And they will see at least 'Select product to be varied' radio button option(s)
        And they will see a table with headers 2, 'Select' and 'Authorisation Number'
        And they will see a table with a row containing a radio button and values 'Product name' and '12345/1234'
        And they will see a 'Product not listed' link
        And they will see a 'Continue' option

    @DPL-3005-1
    Scenario: User selects 'Product To Be Varied'
        Given the user has been directed to the 'Select product 1' page
        And the user has selected 'Product 1'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @DPL-3005-2
    Scenario: User does not select a product
        Given the user has been directed to the 'Select product 1' page
        And they have not selected any 'Products'
        When they select 'Continue'
        Then they will see an error message containing 'Select a product to continue'
        And they will not be able to continue