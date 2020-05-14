Feature: User starts the MA Variation process
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-4000
        Jira: GS-221

    @EPL-4000-1
    Scenario: User can begin variation process
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        When they select the 'Vary a marketing authorisation' option and click continue
        Then they will be directed to the 'Variation Select-Procedure-Type' page