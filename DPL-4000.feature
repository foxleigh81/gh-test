Feature: User starts the MA Variation process
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-4000
        Jira: GS-221

    @DPL-4000-1
    Scenario: MA Starts
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        When the user has selected the 'MA Variation' option
        And the user has selected 'Start Now'
        Then they are directed to the 'Procedure Type' page