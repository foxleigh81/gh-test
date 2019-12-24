Feature: User enters a variation code
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0007
        Jira: GS-6

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Select Variation Procedure Type' page
        And they select the 'Single' option and click continue
        And they are directed to the 'Variation Single Procedure Options' page
        And they select the 'One change to one product' option and click continue
        And they are directed to the 'Variation Single One-Product Select Products' page
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Single One-Product Enter Variation Code' page

#     @APL-0007-1
#     @TestData::TDG-Raptors-And-Reptiles-MA
#     Scenario: User directed to Enter Variation Code
#         And the user has been directed to the 'Enter Variation Code' page
#         When page 'Enter Variation Code' loads
#         Then they will see a 'Back' link
#         And a 'Sign out' link
#         And a sub header 'Vary a marketing authorisation'
#         And a page header 'Choose a variation'
#         And a sub header 'Enter variation code or name'
#         And a sub header 'Select a common variation'
#         And the user can see a text input box
#         And they will see 5 radio button option(s)
#         And they will see a 'Continue' option

#     @APL-0007-2
#     @TestData::TDG-Raptors-And-Reptiles-MA
#     Scenario: User enters a valid code from Data Table IA Only
#         And the user can see a text input box
#         And they have entered a valid '<Sub Code>' from 'Data Table IA Only'
#         When they select 'Continue'
#         Then they are directed to the 'Implementation Date' page

#     @APL-0007-3
#     @TestData::TDG-Raptors-And-Reptiles-MA
#     Scenario: User enters a valid code from Data Table IB Only
#         And the user can see a text input box
#         And they have entered a valid '<Sub Code>' from 'Data Table IB Only'
#         When they select 'Continue'
#         Then they are directed to the 'Describe Changes' page

#     @APL-0007-4
#     @TestData::TDG-Raptors-And-Reptiles-MA
#     Scenario: User enters a valid code from Data Table II Only
#         And the user can see a text input box
#         And they have entered a valid '<Sub Code>' from 'Data Table II Only'
#         When they select 'Continue'
#         Then they are directed to the 'Describe Changes' page

#     @APL-0007-5
#     @TestData::TDG-Raptors-And-Reptiles-MA
#     Scenario: User enters a valid code from Data Table IA + IB
#         And the user can see a text input box
#         And they have entered a valid '<Sub Code>' from 'Data Table IA + IB'
#         When they select 'Continue'
#         Then they are directed to the 'Variation Type Page 2' page

#     @APL-0007-6
#     @TestData::TDG-Raptors-And-Reptiles-MA
#     Scenario: User enters a valid code from Data Table Z Only
#         And the user can see a text input box
#         And they have entered a valid '<Sub Code>' from 'Data Table Z Only'
#         When they select 'Continue'
#         Then they are directed to the 'Variation Type Page 1' page

#     @APL-0007-7
#     @TestData::TDG-Raptors-And-Reptiles-MA
#     Scenario: User enters a valid code from Data table No Variations
#         And the user can see a text input box
#         And they have entered a valid '<Sub Code>' from 'Data Table No Variations'
#         When they select 'Continue'
#         Then they are directed to the 'Describe Changes' page

#     @APL-0007-8
#     @TestData::TDG-Raptors-And-Reptiles-MA
#     Scenario: User enters a code from Data Table Z Special
#         And the user can see a text input box
#         And they have entered a valid '<Sub Code>' from 'Data Table Z Special'
#         When they select 'Continue'
#         Then they are directed to the 'Describe Changes' page

#     @APL-0007-9
#     @TestData::TDG-Raptors-And-Reptiles-MA
#     Scenario: User selects a common variation
#         And the user has been directed to the 'Enter Variation Code' page
#         And they will see 5 radio button option(s)
#         And they have selected '<Sub Code>' from 'Data Table Common Variations'
#         When they select 'Continue'
#         Then they are directed to the '<Page>' page

#     @APL-0007-10
#     @TestData::TDG-Raptors-And-Reptiles-MA
#     Scenario: User does not enter a valid code or select a radio button option
#         When they click the 'Continue' button
#         Then they will see a warning message stating 'Please enter either a variation code/name, or select a common variation'
#         And they are directed to the 'Variation Single One-Product Enter Variation Code' page