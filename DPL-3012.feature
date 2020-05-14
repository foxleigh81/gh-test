Feature: User enters a second variation code
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-3012

    Background:
        Given startMaNavToTypeSevChangesOneProductDescribeChanges
        And they enter the 'Present' text
        And they enter the 'Proposed' text and click continue
        And they are directed to the 'Variation Type IA Several-Changes One-Product Enter-Second-Variation-Code' page

    @DPL-3012-1
    Scenario: User enters a valid IA Only code in type ahead text field
        And they will see a page header 'Choose a second variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text 'IA.Only' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the 'Variation Type IA Several-Changes One-Product Implementation-Date' page

    @DPL-3012-2
    Scenario: User enters a valid IA+IB Only code in type ahead text field
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text 'IA.IB' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the 'Variation Type IA Several-Changes One-Product Implementation-Date' page

    @DPL-3012-3
    Scenario: User enters a valid Z Only code in type ahead text field
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they enter the text 'Z.Only' into the text input with id 'Variation Code Picker' and click Continue
        Then they will be directed to the 'Variation Type IA Several-Changes One-Product Implementation-Date' page

    @DPL-3012-4
    Scenario: User selects a common code radio option
        And they will see a page header 'Choose a variation'
        And they will see a sub header 'Enter variation code or name'
        And they will see a sub header 'Select a common variation'
        When they select a radio button option and click continue
        Then they will be directed to the 'Variation Type IA Several-Changes One-Product Implementation-Date'  page