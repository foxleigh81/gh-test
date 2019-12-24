Feature: User who has entered a valid code from Data Table Z Only, and has selected IA variation type, enters the implementation date
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1028
        Jira: GS-143

    Background:
        Given the user has completed the PL-1026 steps

    @BPL-1028-1
    Scenario: User who has entered a valid code from Data Table Z Only and has selected variation type IA is directed to the 'Enter Implementation Date' page 
        And the user has been directed to the 'Implementation Date' page
        When page 'Implementation Date' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        Then a page header 'Enter the implementation date'
        And they will see the mandatory 'Date' text input box
        And the user will see the 'Additional comments' text area
        And they will see a save and exit link 
        And they will see a 'Continue' option

    @BPL-1028-2
    Scenario: User enters an implementation date
        And the user has been directed to the 'Implementation Date' page
        And they can see the 'Date' text input box
        And they have entered a valid 'Date'
        When they select 'Continue'
        Then they are directed to the 'Article 5' page

    @BPL-1028-3
    Scenario: User does not enter a valid implementation date
        And the user has been directed to the 'Implementation Date' page
        And they can see the 'Date' text input box
        And they have not entered a valid 'Date'
        When the user has selected 'Continue'
        Then they will see an error message containing 'Enter implementation date'
        And they will not be able to continue