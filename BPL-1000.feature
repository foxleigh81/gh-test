Feature: User starts the MA Variation process
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1000
        Jira: GS-93

    @BPL-1000-1
    Scenario: MA Starts
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        When the user has selected the 'MA Variation' option
        And the user has selected 'Start Now'
        Then they are directed to the 'Procedure Type' page