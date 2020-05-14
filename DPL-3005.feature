Feature: User selects product to be varied
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-3005

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Group of IA changes' option and click continue
        And they are directed to the 'Variation Type IA Procedure Options' page
        And they select the 'Several changes to one product' option and click continue
        And they are directed to the 'Variation Type IA Several-Changes One-Product Select-Product-1' page

    @DPL-3005-1
    Scenario: User selects 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and clicks continue
        And they will see a page header 'Select product to be varied'
        And they will see a radio button option for 'Isocare 1000 mg/g Inhalation Vapour, Liquid'
        And they will see a radio button option for 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they will see a radio button option for 'Benazecare Flavour 5 mg Tablets for Dogs and Cats'
        And a 'Continue' button
        When they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        Then they will be directed to the 'Variation Type IA Several-Changes One-Product Enter-Variation-Code' page

    @DPL-3005-2
    Scenario: User does not select a product and clicks continue
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Several-Changes One-Product Select Products' page
        And they will see a warning message stating 'You must select a product to be varied'
        And they will not be able to continue

    @DPL-3005-3
    Scenario: User selects 'Enter details for products not listed' link
        And the user can see a 'Enter details for products not listed' link
        When the user has selected the link 'Enter details for products not listed'
        Then they are directed to the 'Enter Product 1' page