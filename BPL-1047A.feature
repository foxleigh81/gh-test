Feature: User who has entered a valid code from Data Table Z Special  changes the variation
    Description:
        Reference: BPL-1047A
        Jira: GS-181

    Background: Given the user has completed the GS-180 steps

    @BPL-1047A
    Scenario Outline: User who has entered a valid code from Data Table Z Special  is directed to 'Confirm Change Variation' page 
        Given the user has been directed to the 'Confirm Change Variation' page
        When page 'Confirm Change Variation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing variation'
        And a page header 'Are you sure you want to change variation:'
        And they will see the '<Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | A(z).1 | Change in distributer details | Describe Changes |
        | A(z).2 | Change in legal entity | Describe Changes |
        | B(z).1 | Alignment of Part 2 in accordance with the current data regarding methods of production and quality control | Describe Changes |
        | C.I(z).2 | Addition or change to safety warnings | Describe Changes |
        | C.I(z).3 | Approval of mock-ups | Describe Changes |
        | C.I(z).4 | Changes to SPC and/or product literature for MAPIs | Describe Changes |
        | C.I(z).5 | Joint-Labelling Variation | Describe Changes |
        | C.I(z).6 | Normal corrections or simple text layout changes to SPC and/or product literature | Describe Changes |
        | C.I(z).7 | Resubmission of previously refused Type II variations | Describe Changes |
        | C.I(z).8 | Simple changes to dosage instructions | Describe Changes |
        | C.I(z).9 | Submission following formal advice from the VMD | Describe Changes |

    @BPL-1047A-1
    Scenario: User selects 'Yes' option
        Given the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @BPL-1047A-2
    Scenario: User selects 'No' option
        Given the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they will be directed to the 'Check Your Answers' page

    @BPL-1047A-3
    Scenario: User does not select an option
        Given the user has been directed to the 'Confirm Change Variation' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue