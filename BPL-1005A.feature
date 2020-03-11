Feature: User enters a product which does not appear in the list on the Select product page
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1005A
        Jira: GS-97

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Single' option and click continue
        And they are directed to the 'Variation Single Procedure Options' page
        And they select the 'One change to several products' option and click continue
        And they are directed to the 'Variation Single Multiple-Products Select-Product-2' page
        And they select the 'Enter details for products not listed' link
        And they are directed to the 'Variation Single Multiple-Products Enter-Products-2' page

    @BPL-1005A-1
    Scenario: User adds a product and selects 'Continue'
        And they will see a page header 'Enter product to be varied'
        And they will see the mandatory 'Enter product name' text input box
        And they will see the mandatory 'Enter authorisation number' text input box
        And a table with headers 'Product name', 'Authorisation number' and 'Action'
        And they will see an 'Add product' option
        And they will see an 'Continue' option
        And they have entered a valid 'product name'
        And they have entered a valid 'authorisation number' and clicked the 'Add product' option
        When they select the 'Continue' option
        Then they are directed to the 'Variation Single Multiple-Products Select-Product-2' page
        And they will see a table with value 'Product name' and a 'Remove' link

    @BPL-1005A-2
    Scenario: User enters either product name or authorisation number
        And they have entered a valid 'Continue'
        When they select 'You must enter product name and authorisation number'
        Then they will see an error message containing 
        And they will not be able to continue

    @BPL-1005A-3
    Scenario: User removes a product
        And they can see a table with value 'Product name' and a 'Remove' link
        When they select 'Remove'
        Then they will be directed back to the 'Variation Single Multiple-Products Enter-Products-2' page
        And 'Product name' will no longer appear in the table