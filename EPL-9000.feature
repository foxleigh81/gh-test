Feature: User starts the MA Variation process
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-9000
        Jira: GS-374

    @EPL-9000-1
    Scenario: MA Starts
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        When the user has selected the 'MA Variation' option
        And the user has selected 'Start Now'
        Then they are directed to the 'Procedure Type' page