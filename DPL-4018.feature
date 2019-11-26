Feature: User who has entered a valid code from Data Table IA Only  and a second variation code from Data Table IA Only checks, and is able to change answers
    Description:
        Reference: DPL-4018

    Background: Given the user has completed the PL-4017 steps

    @DPL-4018
    Scenario Outline: User who has entered a valid code from Data Table IA Only and a second variation code from Data Table IA Only is directed to 'Check your answers' page 
        Given the user has been directed to the 'Check Your Answers' page
        And they have entered a variation code from Data Table 'Data Table IB Only'
        When page 'Check Your Answers' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Check Your Answers'
        And a page header 'MA variation'
        And a section header 'Product'
        And a table with a row with the list item 'Procedure Type' and the 'Procedure Option' displayed and a change link
        And a table with a row with the list item 'Variation <Sub Code>' and the 'Proposed changes' displayed and a change link
        And a table with a row with the list item 'Supporting Documents' and the 'Omitted Documents' displayed and a change link
        And a section header 'Other Information'
        And a list header 'Contact Details'
        And a table with a row with the list item 'Contact Name' and the Purchase Order Number' displayed 
        And a table with a row with the list item 'Contact Number' and the 'Contact Email Address' displayed and a change link
        And a table with a row with the list item 'Invoice Email Address' and the 'Further comments (optional)' displayed and a change link
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed and a change link
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed and a change link
        And a section header MISSING VALUE with a 'Change' link
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And a section header MISSING VALUE with a 'Change' link
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And a table with a row with the list item MISSING VALUE and the MISSING VALUE displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | C.II.6(a) | Administrative information concerning the holder's representative | Implementation Date |

    @DPL-4018-1
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @DPL-4018-2
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Describe changes'
        When they select 'Describe changes change link'
        Then they will be directed to the 'Describe changes' page

    @DPL-4018-3
    Scenario: User selects Remove variation link for Variation 1
        Given they can see a 'Variation 1 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @DPL-4018-4
    Scenario: User selects Remove variation link for Variation 2
        Given they can see a 'Variation 2 Remove' link
        When the user has selected the link 'Remove variation'
        Then they will be directed to the 'Confirm Remove Variation' page

    @DPL-4018-5
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page

    @DPL-4018-6
    Scenario: User selects 'Continue' option
        Given the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they will be directed to the 'Declaration' page