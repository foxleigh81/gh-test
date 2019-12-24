Feature: User selects product to be varied
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0005
        Jira: GS-4

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Select Variation Procedure Type' page
        And they select the 'Single' option and click continue
        And they are directed to the 'Variation Single Procedure Options' page
        And they select the 'One change to one product' option and click continue
        And they are directed to the 'Variation Single One-Product Select Products' page

    @APL-0005-1
    @TestData::TDG-Raptors-And-Reptiles-MA
    Scenario: User selects 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and clicks continue
        And a page header 'Select product to be varied'
        And they will see a radio button option for 'Isocare 1000 mg/g Inhalation Vapour, Liquid'
        And they will see a radio button option for 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they will see a radio button option for 'Benazecare Flavour 5 mg Tablets for Dogs and Cats'
        And a 'Continue' button
        When they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        Then they are directed to the 'Variation Single One-Product Enter Variation Code' page

    @APL-0005-2
    @TestData::TDG-Raptors-And-Reptiles-MA
    Scenario: User does not select a product and clicks continue
        When they click the 'Continue' button
        Then they will see a warning message stating 'You must select a product to be varied'
        And they are directed to the 'Variation Single One-Product Select Products' page

#     @APL-0005-3
#     Scenario: User selects 'Product not listed' link
#         And the user can see a 'Product not listed' link
#         When the user has selected the link 'Product not listed'
#         Then they are directed to the 'Enter Product 1' page