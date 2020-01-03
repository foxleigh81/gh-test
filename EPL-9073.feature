Feature: User who has entered a valid code from Data Table Z Only and a second variation code from Data Table IA Only views the application summary page
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-9073
        Jira: GS-472

    Background:
        Given the user has completed the PL-9072 steps

    @EPL-9073-1
    Scenario: User who has entered a valid code from Data Table Z Only and a second variation code from Data Table IA Only is directed to the Application Summary page
        Story step/template summary18 not found column I Steps in EPL-9073

    @EPL-9073-2
    Scenario: User selects 'Continue'
        And the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they are directed to the 'Add Another Variation Code' page

    @EPL-9073-3
    Scenario: User selects Remove variation link for Variation 1
        And the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @EPL-9073-4
    Scenario: User selects Remove variation link for Variation 2
        And the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @EPL-9073-5
    Scenario: User selects change link for Product
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Product 1'
        Then they are directed to the 'Product change link' page

    @EPL-9073-6
    Scenario: User selects change link for implementation date
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Implementation Date'
        Then they are directed to the 'Implementation Date change link' page

    @EPL-9073-7
    Scenario: User selects change link for Article 5
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Article 5'
        Then they are directed to the 'Article 5 change link' page

    @EPL-9073-8
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for MISSING VALUE
        When they select 'Proposed changes'
        Then they are directed to the 'Proposed changes change link' page

    @EPL-9073-9
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Application Summary' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page