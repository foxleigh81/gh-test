Feature: User confirms supporting documents
    Description:
        Epic: Procedure H: Workshare 1 ch, sev un prds
        Reference: HPL-7012

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Workshare One-Change Multiple-Products Supporting Documents' page

    @HPL-7012-1
    Scenario: User ticks all check boxes
        And they tick the box for 'Label/ Package leaflet text (QRD).'
        And they tick the box for 'Summary of the product characteristics (SPC), if applicable.'
        And they tick the box for 'Mock-Ups, if applicable.'
        And they tick the box for 'Copy of the relevant page(s)'
        When they click the 'Continue' button
        And they are directed to the 'Variation Workshare One-Change Multiple-Products Upload-Dossier' page

    @HPL-7012-2
    Scenario: User ticks one check boxes, and enters reason for omission
        And they tick the box for 'Copy of the relevant page(s)'
        And they enter the text 'will submit later' into the 'omitted documents' text area
        When they click the 'Continue' button
        And they are directed to the 'Variation Workshare One-Change Multiple-Products Upload-Dossier' page

    @HPL-7012-3
    Scenario: User ticks one check box, and does not enter reason for omission
        And they tick the box for 'Copy of the relevant page(s)'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare One-Change Multiple-Products Supporting-Documents' page
        And they will see a warning message stating 'Give a reason for omitting supporting documents'
        And they will not be able to continue