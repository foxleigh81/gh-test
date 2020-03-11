Feature: User confirms supporting documents
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-3015

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Type IA Several-Changes One-Product Supporting-Documents' page

    @DPL-3015-1
    Scenario: User ticks all check boxes
        And they tick the box for 'Label/ Package leaflet text (QRD).'
        And they tick the box for 'Summary of the product characteristics (SPC), if applicable.'
        And they tick the box for 'Mock-Ups, if applicable.'
        And they tick the box for 'Copy of the relevant page(s)'
        When they click the 'Continue' button
        And they are directed to the 'VariationType IA Several-Changes One-Product Upload-Dossier' page

    @DPL-3015-2
    Scenario: User ticks one check boxes, and enters reason for omission
        And they tick the box for 'Copy of the relevant page(s)'
        And they enter the text 'will submit later' into the 'omitted documents' text area
        When they click the 'Continue' button
        And they are directed to the 'Variation Type IA Several-Changes One-Product Upload-Dossier' page

    @DPL-3015-3
    Scenario: User ticks one check box, and does not enter reason for omission
        And they tick the box for 'Copy of the relevant page(s)'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IA Several-Changes One-Product Supporting-Documents' page
        And they will see a warning message stating 'Give a reason for omitting supporting documents'
        And they will not be able to continue