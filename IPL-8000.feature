Feature: User starts the MA Variation process
    Description:
        Epic: Procedure I: Workshare Sev ch, sev un prds
        Reference: IPL-8000

    @IPL-8000-1
    Scenario: User can begin variation process
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        When they select the 'Vary a marketing authorisation' option and click continue
        Then they will be directed to the 'Variation Select-Procedure-Type' page