Feature: User starts the MA Variation process
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5000
        Jira: GS-506

    @FPL-5000-1
    Scenario: MA Starts
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        When the user has selected the 'MA Variation' option
        And the user has selected 'Start Now'
        Then they are directed to the 'Procedure Type' page