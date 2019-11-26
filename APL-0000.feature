Feature: User starts the MA Variation process
    Description:
        Reference: APL-0000
        Jira: GS-1

    @APL-0000
    Scenario: MA Starts FFS Foxy Again
        Given the Public User is authenticated
        When the user has selected the 'MA Variation' option
        And the user has selected 'Start Now'
        Then they will be directed to the 'Procedure Type' page