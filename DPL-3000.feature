Feature: User starts the MA Variation process
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-3000

    @DPL-3000-1
    Scenario: User can begin variation process
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        When they select the 'Vary a marketing authorisation' option and click continue
        Then they are directed to the 'Variation Select Procedure Type' page