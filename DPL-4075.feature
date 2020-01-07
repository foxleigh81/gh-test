Feature: User who has entered a valid code from Data Table Z Only and a second variation code from Data Table IA Only confirms supporting documents
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-4075
        Jira: GS-342

    Background:
        Given the user has completed the PL-4075B steps

    @DPL-4075-1
    Scenario: User directed to 'Supporting Documents' page 
        And the user has been directed to the 'Supporting Documents' page
        When page 'Supporting Documents' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Supporting Documents'
        And they will see Text 'You need to supply all relevant documents as part of the application. Indicate all those documents that are included in your dossier.'
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

    @DPL-4075-2
    Scenario: User selects all check boxes
        And the user has been directed to the 'Supporting Documents' page
        And they have selected at least 4 checkbox options
        When they select 'Continue'
        Then they are directed to the 'Upload Dossier' page

    @DPL-4075-3
    Scenario: User does not select all check boxes, and enters reason for omission
        And the user has been directed to the 'Supporting Documents' page
        And they have selected at least 4 checkbox options
        And there is a non-empty string in the 'Omitted Documents' text area
        When they select 'Continue'
        Then they are directed to the 'Upload Dossier' page

    @DPL-4075-4
    Scenario: User does not select all check boxes, and does not enter reason for omission
        And the user has been directed to the 'Supporting Documents' page
        And they have not selected at least 4 checkbox options
        And the 'Omitted Documents' text area is empty
        When they select 'Continue'
        Then they will see an error message containing 'Tell us which documents you are omitting, and why to continue'
        And they will not be able to continue