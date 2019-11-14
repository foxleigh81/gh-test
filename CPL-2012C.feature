Feature: User who has enterered a valid code from Data Table IA Only checks, and is able to change answers
    Description:
        Reference: CPL-2012C
    
    Background: Given the user has completed the PL-2012B steps

    @CPL-2012C
    Scenario Outline: User who has enterered a valid code from Data Table IA Only is directed to 'Check your answers' page 
        Given the user has been directed to the 'Check Your Answers' page
        And they have entered a value from Data Table 'Data Table IA Only'
        When page 'Check Your Answers' loads
        Then they will see a 'Back' link
        And they will see a 'Sign out' link
        And they will see a page header 'Check Your Answers'
        And they will see a sub header 'MA variation'
        And they will see the 'Product' displayed with a change link
        And they will see the 'Procedure Type' displayed 
        And they will see the 'Procedure Option' displayed 
        And they will see the 'Variation <Sub Code>' displayed with a change variation link
        And they will see the 'Implementation Date' displayed with a change link
        And they will see the 'Proposed changes' displayed with a change link
        And they will see a list header 'Supporting Documents' displayed with a change link
        And they will see the 'Omitted Documents' displayed 
        And they will see the 'Other Information' displayed 
        And they will see a list header 'Contact Details' displayed with a change link
        And they will see the 'Contact Name' displayed 
        And they will see the Purchase Order Number' displayed 
        And they will see the 'Contact Number' displayed 
        And they will see the 'Contact Email Address' displayed 
        And they will see the 'Invoice Email Address' displayed 
        And they will see the 'Further Comments' displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | C.II.6(a) | Administrative information concerning the holder's representative | Implementation Date |

    @CPL-2012C-1
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @CPL-2012C-2
    Scenario: User selects change link for implementation date
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Implementation Date'
        When they select 'Implementation Date change link'
        Then they will be directed to the 'Implementation Date' page

    @CPL-2012C-3
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Describe changes'
        When they select 'Describe changes change link'
        Then they will be directed to the 'Describe changes' page

    @CPL-2012C-4
    Scenario Outline: User selects change variation link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change variation' link for 'Variation <Sub Code>'
        When they select 'change variation link'
        Then they will be directed to the 'Confirm Change Variation' page
        
    Examples: 
        | Sub Code | Description | Page |
        | C.II.6(a) | Administrative information concerning the holder's representative | Implementation Date |

    @CPL-2012C-5
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page

    @CPL-2012C-6
    Scenario: User selects 'Continue' option
        Given the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they will be directed to the 'Declaration' page