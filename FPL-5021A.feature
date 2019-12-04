Feature: User who has entered a valid code from Data Table IA Only and a second variation  code from Data Table IB Only, or II Only, or No Variations, or Z Special removes a variation
    Description:
        Reference: FPL-5021A

    Background: Given the user has completed the PL-5014 steps

    @FPL-5021A
    Scenario Outline: User who has selected Remove variation 1 is directed to the Confirm Remove Variation page
        Given the user has been directed to the 'Confirm Remove Variation' page
        When page 'Confirm Remove Variation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Are you sure you want to remove variation:'
        And they will see the '<Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | C.II.6(a) | Administrative information concerning the holder's representative | Implementation Date |

    @FPL-5021A-1
    Scenario Outline: User who has selected Remove variation 2 is directed to the Confirm Remove Variation page
        Given the user has been directed to the 'Confirm Remove Variation' page
        When page 'Confirm Remove Variation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Are you sure you want to remove variation:'
        And they will see the '<Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And they will see a 'Continue' option
        
    Examples: 
        | First Code | First Code Group | Sub Code | Description | Page | Group | Var Type |
        | C.II.6(a) | IA Only | B.I.a.1(h) | Addition of an alternative sterilisation site for the active substance using a Ph.Eur. method | Describe Changes | IB Only | IB |
        | C.II.6(a) | IA Only | B.I.a.1(b) | Introduction of a manufacturer of the active substance supported by an ASMF | Describe changes | II Only | II |
        | C.II.6(a) | IA Only | 1(a) | Replacement of a chemical active substance by a different salt/ester complex/derivative, with the same therapeutic moiety, where the efficacy/safety characteristics are not significantly different | Describe Changes | No Variations | N/a |
        | C.II.6(a) | IA Only | A(z).1 | Change in distributer details | Describe Changes | Z Special | N/a |
        | B.I.a.1(h) | IB Only | B.I.a.1(h) | Addition of an alternative sterilisation site for the active substance using a Ph.Eur. method | Describe Changes | IB Only | IB |
        | B.I.a.1(h) | IB Only | B.I.a.1(b) | Introduction of a manufacturer of the active substance supported by an ASMF | Describe changes | II Only | II |
        | B.I.a.1(h) | IB Only | 1(a) | Replacement of a chemical active substance by a different salt/ester complex/derivative, with the same therapeutic moiety, where the efficacy/safety characteristics are not significantly different | Describe Changes | No Variations | N/a |
        | B.I.a.1(h) | IB Only | A(z).1 | Change in distributer details | Describe Changes | Z Special | N/a |

    @FPL-5021A-2
    Scenario: User selects 'Yes'
        Given the user has been directed to the 'Confirm Remove Variation' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @FPL-5021A-3
    Scenario: User selects 'No'
        Given the user has been directed to the 'Confirm Remove Variation' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they will be directed to the 'Application Summary' page

    @FPL-5021A-4
    Scenario: User does not select an option
        Given the user has been directed to the 'Confirm Remove Variation' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue