Feature: User who has entered a valid code from Data Table Z Only and a second variation  code from Data Table IA + IB views the application summary page
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-9082
        Jira: GS-484

    Background:
        Given the user has completed the PL-9081 steps

    @EPL-9082-1
    Scenario: User who has entered a valid code from Data Table Z Only and a second variation  code from Data Table IA + IB is directed to the Application Summary page
        Story step/template summary18 not found column I Steps in EPL-9082

    @EPL-9082-2
    Scenario: User selects 'Continue'
        And the user is on the 'Application Summary' page
        When they select 'Continue'
        Then they are directed to the 'Add Another Variation Code' page

    @EPL-9082-3
    Scenario: User selects Remove variation link for Variation 1
        And the user can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @EPL-9082-4
    Scenario: User selects Remove variation link for Variation 2
        And the user can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they are directed to the 'Confirm Remove Variation' page

    @EPL-9082-5
    Scenario: User selects change link for Product
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they are directed to the 'Select Product 2' page

    @EPL-9082-6
    Scenario: User selects change link for implementation date
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Implementation Date'
        When they select 'Implementation Date change link'
        Then they are directed to the 'Implementation Date' page

    @EPL-9082-7
    Scenario: User selects change link for Article 5
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Article 5'
        When they select 'Article 5 change link'
        Then they are directed to the 'Article 5' page

    @EPL-9082-8
    Scenario: User selects change link for Describe changes
        And the user has been directed to the 'Application Summary' page
        And they can see a 'Change' link for 'Proposed changes'
        When they select 'Proposed changes change link'
        Then they are directed to the 'Describe changes' page

    @EPL-9082-9
    Scenario: User selects the 'Save and exit' link
        And the user has been directed to the 'Application Summary' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they are directed to the 'Incomplete applications' page