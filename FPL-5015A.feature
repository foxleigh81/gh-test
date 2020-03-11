Feature: User uploads dossier
    Description:
        Epic: Procedure F: IB/II - sev ch, 1  prd 
        Reference: FPL-5015A

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Type IB/II Several-Changes One-Product Upload-Dossier' page
        And they can see a page header 'Upload your dossier'

    @FPL-5015A-1
    Scenario: User Uploads a small dossier zip file
        When the Public User clicks 'Choose file' and uploads the file 'files/smallDossier.zip'
        And they click the 'Upload File Continue' button
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Application-Contact-Details' page

    @FPL-5015A-2
    Scenario: User Uploads a non zip file ** Note this needs to be changed to fail
        When the Public User clicks 'Choose file' and uploads the file 'files/test.png'
        And they click the 'Upload File Continue' button
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Application-Contact-Details' page

    @FPL-5015A-3
    Scenario: User does not upload a file
        When they click the 'Upload File Continue' button
        Then they will see a warning message stating 'You must upload a file'
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Upload DossierVariation Type IB/II Several-Changes One-Product Upload-Dossier' page