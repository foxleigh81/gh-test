Feature: User who has entered a valid code from Data Table IA Only changes the variation
    Description:
        Epic: Procedure C:  IA changes - 1 ch, sev un prds 
        Reference: CPL-2012E
        Jira: GS-200

    Background: Given the user has completed the GS-199 steps

    @CPL-2012E
    Scenario Outline: User who has entered a valid code from Data Table IA Only is directed to 'Confirm Change Variation' page 
        Given the user has been directed to the 'Confirm Change Variation' page
        When page 'Confirm Change Variation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing variation'
        And a page header 'Are you sure you want to change variation:'
        And they will see the '<Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | C.II.6(a) | Administrative information concerning the holder's representative | Implementation Date |

    @CPL-2012E-1
    Scenario: User selects 'Yes' option
        Given the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @CPL-2012E-2
    Scenario: User selects 'No' option
        Given the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they will be directed to the 'Check Your Answers' page

    @CPL-2012E-3
    Scenario: User does not select an option
        Given the user has been directed to the 'Confirm Change Variation' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue