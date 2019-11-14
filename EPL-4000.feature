Feature: User starts the MA Variation process
    Description:
        Reference: EPL-4000
    

    @EPL-4000
    Scenario: MA Starts
        Given the Public User is authenticated
        When the user has selected the 'MA Variation' option
        And the user has selected 'Start Now'
        Then they will be directed to the 'Procedure Type' page