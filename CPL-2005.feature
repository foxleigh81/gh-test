Feature: User selects products to be varied
    Description:
        Epic: Procedure C:  IA changes - 1 ch, sev un prds 
        Reference: CPL-2005
        Jira: GS-190

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Group of IA changes' option and click continue
        And they are directed to the 'Variation Type IA Procedure Options' page
        And they select the 'One change to several unrelated products' option and click continue
        And they are directed to the 'Variation Type IA One Change Multiple-Products Select-Products-2' page

    @CPL-2005-1
    Scenario: User selects two products and clicks continue
        And they will see a page header 'Select product to be varied'
        And they will see a check box option for 'Isocare 1000 mg/g Inhalation Vapour, Liquid'
        And they will see a check box option for 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they will see a check box option for 'Benazecare Flavour 5 mg Tablets for Dogs and Cats'
        And a 'Continue' button
        When they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option 
        And they select the 'Acecare 2mg/ml Solution for Injection for Dogs and Cats' option and click continue
        Then they are directed to the 'Variation Type IA One-Change Multiple-Products Enter-Variation-Code' page

    @CPL-2005-2
    Scenario: User selects one product only and clicks continue
        And they have not selected at least 2 checkbox options
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IA One-Change Multiple-Products Select-Products' page
        And they will see a warning message stating 'You must select at least two products to be varied'

    @CPL-2005-3
    Scenario: User does not select a product and clicks continue
        When they click the 'Continue' button
        Then they are directed to the 'Variation TypeIA One-Change Multiple-Products Select-Products' page
        And they will see a warning message stating 'You must select at least two products to be varied'
        And they will not be able to continue

    @CPL-2005-4
    @TestData::Y
    Scenario: User selects 'Enter details for products not listed' link
        And the user can see a 'Enter details for products not listed' link
        When the user has selected the link 'Enter details for products not listed'
        Then they are directed to the 'Enter Products 2' page