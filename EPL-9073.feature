Feature: User who has entered a valid code from Data Table Z Only and a second variation code from Data Table IA Only views the application summary page
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-9073
        Jira: GS-472

    Background: Given the user has completed the GS-471 steps

    @EPL-9073
    Scenario Outline: User who has entered a valid code from Data Table Z Only and a second variation code from Data Table IA Only is directed to the Application Summary page
        Story step/template summary18 not found column I Steps in EPL-9073
        
    Examples: 
        | Sub Code A | Sub Code B | Group A | Group B |
        | A(z) | C.II.6(a) | Z Only | IA Only |

    @EPL-9073-1
    Scenario: User selects 'Continue'
        Given the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they will be directed to the 'Add Another Variation Code' page

    @EPL-9073-2
    Scenario: User selects Remove variation link for Variation 1
        Given the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @EPL-9073-3
    Scenario: User selects Remove variation link for Variation 2
        Given the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @EPL-9073-4
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 2' page

    @EPL-9073-5
    Scenario: User selects change link for implementation date
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Implementation Date'
        When they select 'Implementation Date change link'
        Then they will be directed to the 'Implementation Date' page

    @EPL-9073-6
    Scenario: User selects change link for Article 5
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Article 5'
        When they select 'Article 5 change link'
        Then they will be directed to the 'Article 5' page

    @EPL-9073-7
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they will be directed to the 'Describe changes' page

    @EPL-9073-8
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Application Summary' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page