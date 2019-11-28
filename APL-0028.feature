Feature: User who has entered a valid code from Data Table Z Only and has selected IA variation type enters the implementation date
    Description:
        Reference: APL-0028
        Jira: GS-46

    Background: Given the user has completed the GS-45 steps

    @APL-0028
    Scenario: User who has entered a valid code from Data Table Z Only and has selected variation type IA is directed to the 'Enter Implementation Date' page 
        Given the user has been directed to the 'Implementation Date' page
        When page 'Implementation Date' loads
        Then a page header 'Enter the implementation date'
        And the user will see the 'Date' text input box
        And the user will see the 'Month' text input box
        And the user will see the 'Year' text input box
        And the user will see the 'Additional comments' text area
        And they will see a 'Continue' option

    @APL-0028-1
    Scenario: User enters an implementation date
        Given the user has been directed to the 'Implementation Date' page
        And they can see the 'Date' text input box
        And they have entered a valid 'Date'
        When they select 'Continue'
        Then they will be directed to the 'Article 5' page

    @APL-0028-2
    Scenario: User does not enter a valid implementation date
        Given the user has been directed to the 'Implementation Date' page
        And they can see the 'Date' text input box
        And they have not entered a valid 'Date'
        When the user has selected 'Continue'
        Then they will see an error message containing 'Enter implementation date'
        And they will not be able to continue