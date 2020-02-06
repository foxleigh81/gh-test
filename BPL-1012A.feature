Feature: User uploads dossier
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1012A
        Jira: GS-102

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Single Multiple-Products Upload Dossier' page
        And a page header 'Upload your dossier'

    @BPL-1012A-1
    Scenario: User Uploads a small dossier zip file
        When the Public User clicks 'Choose file' and uploads the file 'files/smallDossier.zip'
        And they click the 'Upload File Continue' button
        Then they are directed to the 'Variation Single Multiple-Products Application-Contact-Details' page

    @BPL-1012A-2
    Scenario: User Uploads a non zip file ** Note this needs to be changed to fail
        When the Public User clicks 'Choose file' and uploads the file 'files/test.png'
        And they click the 'Upload File Continue' button
        Then they are directed to the 'Variation Single Multiple-Products Application-Contact-Details' page

    @BPL-1012A-3
    Scenario: User does not upload a file
        When they click the 'Upload File Continue' button
        Then they will see a warning message stating 'You must upload a file'
        And they are directed to the 'Variation Single Multiple-Products Upload-Dossier' page