Feature: User who has enterered a valid code from Data Table Z Special confirms supporting documents
    Description:
        Reference: APL-0046A
    
    Background: Given the user has completed the PL-0046 steps

    @APL-0046A
    Scenario: User directed to 'Supporting Documents' page 
        Given the user has been directed to the 'Supporting Documents' page
        When page 'Supporting Documents' loads
        Then they will see a 'Back' link
        And they will see a 'Sign out' link
        And they will see a sub header 'Vary a marketing authorisation'
        And they will see a page header 'Supporting Documents'
        And they will see Text 'You need to supply the following documents as part of the application. Indicate all those documents that are included in your dossier.'
        And they will see Text ' ! If you do not provide all these documents, we may reject your application.'
        And the user will see a check box for 'Label/ Package leaflet text (QRD). If your variation affects the labelling and/ or package leaflet (QRD text). Please provide proposed versions (in editable Word format) for each product included in the application; do not provide mock-ups at this stage'
        And the user will see a check box for 'Summary of the product characteristics (SPC), if applicable. If your variation affects the SPC, please provide proposed versions (in editable Word format) for each product included in the application'
        And the user will see a check box for 'Mock-Ups, if applicable. Only provide mocu-ups if your variation is for the approval of mock-ups, e.g. C.II.6(b)'
        And the user will see a check box for 'Copy of the relevant page(s) from the Variation Guideline for the change(s) with the relevant boxes for conditions and documentation ticked'
        And they will see Text 'Make sure that all references/ published literature and any supporting data are in English'
        And the user will see the 'Omitted documents' text area
        And they will see Text 'If your not submitting any of the above documents, tell us which documents and why'
        And the user will see the 'Other information (optional)' text area
        And they will see Text 'Provide any further information we may need to know about your application'
        And they will see a 'Continue' option

    @APL-0046A-1
    Scenario: User selects all check boxes
        Given the user has been directed to the 'Supporting Documents' page
        And they have selected at least 4 checkbox options
        When they select 'Continue'
        Then they will be directed to the 'Upload Dossier' page

    @APL-0046A-2
    Scenario: User does not select all check boxes, and enters reason for omission
        Given the user has been directed to the 'Supporting Documents' page
        And they have selected at least 4 checkbox options
        And there is a non-empty string in the 'Omitted Documents' text area
        When they select 'Continue'
        Then they will be directed to the 'Upload Dossier' page

    @APL-0046A-3
    Scenario: User does not select all check boxes, and does not enter reason for omission
        Given the user has been directed to the 'Supporting Documents' page
        And they have not selected at least 4 checkbox options
        And the 'Omitted Documents' text area is empty
        When they select 'Continue'
        Then they will see an error message containing 'Tell us which documents you are omitting, and why to continue'
        And they will not be able to continue