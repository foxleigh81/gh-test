Feature: User who has entered a valid code from Data Table IA + IB and a second variation code from Data Table Z Only enters Implementation Date 
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-9057
        Jira: GS-451

    Background: Given the user has completed the GS-426 steps

    @EPL-9057
    Scenario: User who has entered a valid code from Data Table IA + IB and a second variation code from Data Table Z Only is directed to 'Enter Implementation Date' page 
        Given the user has been directed to the 'Implementation Date' page
        When page 'Implementation Date' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        Then a page header 'Enter the implementation date'
        And they will see the mandatory 'Date' text input box
        And the user will see the 'Additional comments' text area
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @EPL-9057-1
    Scenario: User enters an implementation date
        Given the user has been directed to the 'Implementation Date' page
        And they can see the 'Date' text input box
        And they have entered a valid 'Date'
        When they select 'Continue'
        Then they will be directed to the 'Describe Changes' page

    @EPL-9057-2
    Scenario: User does not enter a valid implementation date
        Given the user has been directed to the 'Implementation Date' page
        And they can see the 'Date' text input box
        And they have not entered a valid 'Date'
        When the user has selected 'Continue'
        Then they will see an error message containing 'Enter implementation date'
        And they will not be able to continue