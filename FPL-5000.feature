Feature: User starts the MA Variation process
    Description:
        Epic: Procedure F: IB/II - sev ch, 1  prd 
        Reference: FPL-5000
        Jira: GS-506

    @FPL-5000-1
    Scenario: User can begin variation process
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        When they select the 'Vary a marketing authorisation' option and click continue
        Then they will be directed to the 'Variation Select-Procedure-Type' page