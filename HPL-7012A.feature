Feature: User uploads dossier
    Description:
        Epic: Procedure H: Workshare 1 ch, sev un prds
        Reference: HPL-7012A

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they navigate to the 'Variation Workshare One-Change Multiple-Products Upload Dossier' page
        And a page header 'Upload your dossier'

    @HPL-7012A-1
    Scenario: User Uploads a small dossier zip file
        When the Public User clicks 'Choose file' and uploads the file 'files/smallDossier.zip'
        And they click the 'Upload File Continue' button
        Then they are directed to the 'Variation Workshare One-Change Multiple-Products Application-Contact-Details' page

    @HPL-7012A-2
    Scenario: User Uploads a non zip file ** Note this needs to be changed to fail
        When the Public User clicks 'Choose file' and uploads the file 'files/test.png'
        And they click the 'Upload File Continue' button
        Then they are directed to the 'Variation Workshare One-Change Multiple-Products Application-Contact-Details' page

    @HPL-7012A-3
    Scenario: User does not upload a file
        When they click the 'Upload File Continue' button
        Then they will see a warning message stating 'You must upload a file'
        And they are directed to the 'Variation Workshare One-Change Multiple-Products Upload-Dossier' page