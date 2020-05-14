Feature: User enters a product which does not appear in the list on the Select product page
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1005A
        Jira: GS-97

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Single' option and click continue
        And they are directed to the 'Variation Single Procedure-Options' page
        And they select the 'One change to several products' option and click continue
        And they are directed to the 'Variation Single Multiple-Products Select-Product-2' page
        And they select the 'Enter details for products not listed' link
        And they are directed to the 'Variation Single Multiple-Products Enter-Products-2' page

    @BPL-1005A-1
    Scenario: User adds a product 
        And they will see a page header 'Enter products to be varied'
        And they will see the mandatory 'Enter the name of the product' text input box
        And they will see the mandatory 'Enter the products UK authorisation number' text input box
        And a table with headers 'Products selected' and 'Action'
        And they will see an 'Add product' option
        And a 'Continue' button
        And they have entered 'a product name'
        And they have entered 'an authorisation number'
        When they select the 'Add product' option
        Then they will be directed back to the 'Variation Single Multiple-Products Enter-Products-2' page
        And they will see a table row with values 'Product name' and 'Authorisation number' and a 'Remove' link

    @BPL-1005A-2
    Scenario: User adds two products and clicks cntinue
        And they have added at least two 'Products'
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Single Multiple-Products Enter-Variation-Code' page

    @BPL-1005A-3
    Scenario: User adds one product only and clicks continue
        And they have added a 'Product'
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Single Multiple-Products Enter-Products-2' page
        And they will see a warning message stating 'You must add at least two products to the list before continuing'
        And they will not be able to continue

    @BPL-1005A-4
    Scenario: User enters either product name only and selects 'Add selected products'
        And they have entered 'product name'
        When they select 'Add selected products'
        Then they will see an error message containing 'You must complete both fields'
        And they will not be able to continue

    @BPL-1005A-5
    Scenario: User enters either product name only and selects 'Continue'
        And they have entered 'product name'
        When they select 'Continue'
        Then they will see an error message containing 'You must add at least two products to the list before continuing'
        And they will not be able to continue

    @BPL-1005A-6
    Scenario: User removes a product
        And they can see a table row with values 'Product name' and 'Authorisation number' and a 'Remove' link
        When they select 'Remove'
        Then they will be directed back to the 'Variation Single Multiple-Products Enter-Products-2' page
        And 'Product name' and 'Authorisation number' will no longer appear in the table