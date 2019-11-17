Feature: User who has entered a valid code from Data Table IA Only removes the variation
    Description:
        Reference: DPL-3014A

    Background: Given the user has completed the PL-3014 steps

    @DPL-3014A
    Scenario Outline: User who has selected Remove variation 1 is directed to the Confirm Remove Variation page
        Given the user has been directed to the 'Confirm Remove Variation' page
        When page 'Confirm Remove Variation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Are you sure you want to remove'
        And they will see the 'Variation Code <Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | C.II.6(a) | Administrative information concerning the holder's representative | Implementation Date |

    @DPL-3014A-1
    Scenario Outline: User who has selected Remove variation 2 is directed to the Confirm Remove Variation page
        Given the user has been directed to the 'Confirm Remove Variation' page
        When page 'Confirm Remove Variation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Are you sure you want to remove'
        And they will see the 'Variation Code <Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | C.II.6(a) | Administrative information concerning the holder's representative | Implementation Date |

    @DPL-3014A-2
    Scenario: User selects 'Yes'
        Given the user has been directed to the 'Confirm Remove Variation' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @DPL-3014A-3
    Scenario: User selects 'No'
        Given the user has been directed to the 'Confirm Remove Variation' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they will be directed to the 'Application Summary' page

    @DPL-3014A-4
    Scenario: User does not select an option
        Given the user has been directed to the 'Confirm Remove Variation' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue