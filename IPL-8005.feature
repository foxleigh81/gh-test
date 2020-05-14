Feature: User selects products to be varied
    Description:
        Epic: Procedure I: Workshare Sev ch, sev un prds
        Reference: IPL-8005

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Workshare' option and click continue
        And they are directed to the 'Variation Workshare Procedure Options' page
        And they select the 'Several changes to several unrelated products' option and click continue
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Select-Product-2' page

    @IPL-8005-1
    Scenario: User adds a product
        And they will see a page header 'Select product to be varied'
        And they will see a check box option for 'Isocare 1000 mg/g Inhalation Vapour, Liquid'
        And they will see a check box option for 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they will see a check box option for 'Benazecare Flavour 5 mg Tablets for Dogs and Cats'
        And an 'Add selected products' option
        And a 'Continue' button
        And they will see a table with headers 'Products selected' and 'Action'
        When they select the checkbox option for 'Isocare 1000 mg/g Inhalation Vapour, Liquid' and click the 'Add selected products' option
        Then they will be directed back to the 'Variation Workshare Several-Changes Multiple-Products Select-Product-2' page
        And they will see a table with value 'Isocare 1000 mg/g Inhalation Vapour, Liquid' and a 'Remove' link

    @IPL-8005-2
    Scenario: User adds two products and clicks continue
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option 
        And they select the 'Acecare 2mg/ml Solution for Injection for Dogs and Cats' option and click the 'Add selected products' option
        When they click the 'Continue' button
        Then they will be directed to the 'Variation Workshare Several-Changes Multiple-Products Enter-Variation-Code' page

    @IPL-8005-3
    Scenario: User adds one product only and clicks continue
        And they select the checkbox option for 'Isocare 1000 mg/g Inhalation Vapour, Liquid' and click the 'Add selected products' option
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Workshare Several-Changes Multiple-Products Select-Product-2' page
        And they will see a warning message stating 'You must add at least two products to the list before continuing'

    @IPL-8005-4
    Scenario: User does not add a product and clicks continue
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Workshare Several-Changes Multiple-Products Select-Products' page
        And they will see a warning message stating 'You must add at least two products to the list before continuing'
        And they will not be able to continue

    @IPL-8005-5
    Scenario: User selects 'Enter details for products not listed' link
        And the user can see a 'Enter details for products not listed' link
        When the user has selected the link 'Enter details for products not listed'
        Then they are directed to the 'Variation Workshare Several-Changes Multiple-Products Enter-Products-2' page

    @IPL-8005-6
    Scenario: User removes a product
        And they can see a table row with values 'Isocare 1000 mg/g Inhalation Vapour, Liquid' and 'Remove' and a 'Remove' link
        When they select 'Variation Workshare Several-Changes Multiple-Products Select-Product-2'
        Then they will be directed back to the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' page
        And  and  will no longer appear in the table