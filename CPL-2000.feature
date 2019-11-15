Feature: User starts the MA Variation process
    Description:
        Reference: CPL-2000
    

    @CPL-2000
    Scenario: MA Starts
        Given the Public User is authenticated
        When the user has selected the 'MA Variation' option
        And the user has selected 'Start Now'
        Then they will be directed to the 'Procedure Type' page