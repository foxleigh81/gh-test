Feature: User starts the MA Variation process
    Description:
        Epic: Procedure G: IB/II - sev ch, sev rel prds 
        Reference: GPL-6000

    @GPL-6000-1
    Scenario: User can begin variation process
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        When they select the 'Vary a marketing authorisation' option and click continue
        Then they are directed to the 'Variation Select Procedure Type' page