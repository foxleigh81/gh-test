Feature: User enters a product which does not appear in the list on the Select product page
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0005A
        Jira: GS-5

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Single' option and click continue
        And they are directed to the 'Variation Single Procedure Options' page
        And they select the 'One change to one product' option and click continue
        And they are directed to the 'Variation Single One-Product Select-Product-1' page
        # Need to navigate to manual product selection, not implemented yet

#     @APL-0005A-1
#     Scenario: User is directed to the Enter Product 1 page
#         And the user has been directed to the 'Enter Product 1' page
#         When page 'Enter Product 1' loads
#         Then they will see a 'Back' link
#         And a 'Sign out' link
#         And a sub header 'Vary a marketing authorisation'
#         And a page header 'Enter product to be varied'
#         And they will see the mandatory 'Enter product name' text input box
#         And they will see the mandatory 'Enter authorisation number' text input box
#         And they will see a 'Continue' option

#     @APL-0005A-2
#     @TestData::KetaminePlus
#     Scenario: User enters product name and authorisation number and selects 'Continue'
#         And the user has been directed to the 'Enter Products 1' page
#         And they have entered a valid 'product name'
#         And they have entered a valid 'authorisation number'
#         When they select the 'Continue' option
#         Then they are directed to the 'Enter Variation Code' page

#     @APL-0005A-3
#     Scenario: User enters either product name or authorisation number
#         And the user has been directed to the 'Enter Product 1' page
#         And one or more mandatory fields are empty
#         When they select 'Continue'
#         Then they will see an error message containing 'You must enter product name and authorisation number'
#         And they will not be able to continue

#     @APL-0005A-4
#     Scenario: User removes a product
#         And the user can see a 'Remove' link
#         When they select 'Remove'
#         Then they will be directed back to the 'Enter Product 1' page
#         And the 'product' will no longer appear in the table