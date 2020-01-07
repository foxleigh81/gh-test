Feature: User who has entered a valid code from Data Table IA + IB and a second variation code from Data Table Z Only answers the Article 5 question
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-4058
        Jira: GS-319

    Background:
        Given the user has completed the PL-4057 steps

    @DPL-4058-1
    Scenario: User directed to 'Article 5' page 
        And the user has been directed to the 'Article 5' page
        When page 'Article 5' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Does this variation conform to Article 5'
        And they will see Text 'Is this an unforseen variation that conforms to Article 5 of Regulation EU 1234/2008?'
        And they will see Text 'This should have already been agreed with the Veterinary Medicines Directorate'
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No' 
        And they will see a 'Continue' option

    @DPL-4058-2
    Scenario: User selects 'Yes' option
        And the user has been directed to the 'Article 5' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they are directed to the 'Describe Changes' page

    @DPL-4058-3
    Scenario: User selects 'No' option
        And the user has been directed to the 'Article 5' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they are directed to the 'Describe Changes' page

    @DPL-4058-4
    Scenario: User does not select an option
        And the user has been directed to the 'Article 5' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue