Feature: User starts the MA Variation process
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1000
        Jira: GS-93

    @BPL-1000
    Scenario: MA Starts
        Given the Public User is authenticated
        When the user has selected the 'MA Variation' option
        And the user has selected 'Start Now'
        Then they will be directed to the 'Procedure Type' page