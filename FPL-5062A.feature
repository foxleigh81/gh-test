Feature: User who has entered a valid code from Data Table IB Only, II Only, No Variations, Z Special removes the variation
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5062A

    Background: Given the user has completed the PL-5062 steps

    @FPL-5062A
    Scenario Outline: User who has entered a valid code from Data Table IB Only, II Only, No Variations, Z Special is directed to the Confirm Remove Variation page
        Given the user has been directed to the 'Confirm Remove Variation' page
        When page 'Confirm Remove Variation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Are you sure you want to remove variation:'
        And they will see the '<Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | C.II.6(a) | Administrative information concerning the holder's representative | Implementation Date |

    @FPL-5062A-1
    Scenario: User selects 'Yes'
        Given the user has been directed to the 'Confirm Remove Variation' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @FPL-5062A-2
    Scenario: User selects 'No'
        Given the user has been directed to the 'Confirm Remove Variation' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they will be directed to the 'Application Summary' page

    @FPL-5062A-3
    Scenario: User does not select an option
        Given the user has been directed to the 'Confirm Remove Variation' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue