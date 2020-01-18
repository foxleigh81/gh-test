Feature: User starts the MA Variation process
    Description:
        Epic: Procedure C:  IA changes - 1 ch, sev un prds 
        Reference: CPL-2000
        Jira: GS-187

    @CPL-2000-1
    Scenario: User can begin variation process
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        When they select the 'Vary a marketing authorisation' option and click continue
        Then they are directed to the 'Variation Select Procedure Type' page