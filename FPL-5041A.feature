Feature: User who has entered a valid code from Data Table IA Only  and a second variation code from Data Table IA + IB and has selected Variation type IB removes a variation
    Description:
        Epic: Procedure F: IB/II/Ext - sev ch, 1  prd 
        Reference: FPL-5041A

    Background: Given the user has completed the PL-5041 steps

    @FPL-5041A
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

    @FPL-5041A-1
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
        | Sub Code | Description | Page |
        | A(z) | Other Variation | Variation Type Page 1 |
        | B.I.a.1(z) | Other variation | Variation Type Page 1 |
        | B.I.a.2(z) | Other variation | Variation Type Page 1 |
        | B.I.a.3(z) | Other variation | Variation Type Page 1 |
        | B.I.a.4(z) | Other variation | Variation Type Page 1 |
        | B.I.a.5(z) | Other variation | Variation Type Page 1 |
        | B.I.a(z) | Change in the manufacture of the active substance: Other variation | Variation Type Page 1 |
        | B.I.b.1(z) | Other variation | Variation Type Page 1 |
        | B.I.b.2(z) | Other variation | Variation Type Page 1 |
        | B.I.b(z) | Change in control of the active substance | Variation Type Page 1 |
        | B.I.c.1(z) | Other variation | Variation Type Page 1 |
        | B.I.c.2(z) | Other variation | Variation Type Page 1 |
        | B.I.c.3(z) | Other variation | Variation Type Page 1 |
        | B.I.c(z) | Change in container closure system of the active substance: Other variation | Variation Type Page 1 |
        | B.I.d.1(z) | Other variation | Variation Type Page 1 |
        | B.I.d(z) | Stability: Other variation | Variation Type Page 1 |
        | B.I.e.1(z) | Other variation | Variation Type Page 1 |
        | B.I.e.2(z) | Other variation | Variation Type Page 1 |
        | B.I.e.3(z) | Other variation | Variation Type Page 1 |
        | B.I.e.4(z) | Other variation | Variation Type Page 1 |
        | B.I.e.5(z) | Other variation | Variation Type Page 1 |
        | B.I.e(z) | Design space and post approval change management protocols. Other Variation | Variation Type Page 1 |
        | B.I(z) | Active substance: Other variation | Variation Type Page 1 |
        | B.II.a.1(z) | Other variation | Variation Type Page 1 |
        | B.II.a.2(z) | Other variation | Variation Type Page 1 |
        | B.II.a.3(z) | Other variation | Variation Type Page 1 |
        | B.II.a.4(z) | Other variation | Variation Type Page 1 |
        | B.II.a.5(z) | Other variation | Variation Type Page 1 |
        | B.II.a.6(z) | Other variation | Variation Type Page 1 |
        | B.II.a(z) | Change in description and composition of the final product: Other variation | Variation Type Page 1 |
        | B.II.b.1(z) | Other variation | Variation Type Page 1 |
        | B.II.b.2(z) | Other variation | Variation Type Page 1 |
        | B.II.b.3(z) | Other variation | Variation Type Page 1 |
        | B.II.b.4(z) | Other variation | Variation Type Page 1 |
        | B.II.b.5(z) | Other variation | Variation Type Page 1 |
        | B.II.b(z) | Change in the manufacture of the finished product | Variation Type Page 1 |
        | B.II.c.1(z) | Other variation | Variation Type Page 1 |
        | B.II.c.2(z) | Other variation | Variation Type Page 1 |
        | B.II.c.3(z) | Other variation | Variation Type Page 1 |
        | B.II.c.4(z) | Other variation | Variation Type Page 1 |
        | B.II.c(z) | Change in control of excipients in the finished product | Variation Type Page 1 |
        | B.II.d.1(z) | Other variation | Variation Type Page 1 |
        | B.II.d.2(z) | Other variation | Variation Type Page 1 |
        | B.II.d.3(z) | Other variation | Variation Type Page 1 |
        | B.II.d(z) | Change in control of the finished product: Other variation | Variation Type Page 1 |
        | B.II.e.1(z) | Other variation | Variation Type Page 1 |
        | B.II.e.2(z) | Other variation | Variation Type Page 1 |
        | B.II.e.3(z) | Other variation | Variation Type Page 1 |
        | B.II.e.4(z) | Other variation | Variation Type Page 1 |
        | B.II.e.5(z) | Other variation | Variation Type Page 1 |
        | B.II.e.6(z) | Other variation | Variation Type Page 1 |
        | B.II.e.7(z) | Other variation | Variation Type Page 1 |
        | B.II.e(z) | Change in the container closure system of the finished product: Other variation | Variation Type Page 1 |
        | B.II.f.1(z) | Other variation | Variation Type Page 1 |
        | B.II.f(z) | Stability: Other variation | Variation Type Page 1 |
        | B.II.g.1(z) | Other variation | Variation Type Page 1 |
        | B.II.g.2(z) | Other variation | Variation Type Page 1 |
        | B.II.g.3(z) | Other variation | Variation Type Page 1 |
        | B.II.g.4(z) | Other variation | Variation Type Page 1 |
        | B.II.g.5(z) | Other variation | Variation Type Page 1 |
        | B.II.g(z) | Design space and post approval change management protocols: Other variation | Variation Type Page 1 |
        | B.II.h.1(z) | Other variation | Variation Type Page 1 |
        | B.II.h(z) | Adventitious agents safety: Other variation | Variation Type Page 1 |
        | B.II(z) | Finished product: Other variation | Variation Type Page 1 |
        | B.III.1(z) | Other Variation | Variation Type Page 1 |
        | B.III.2(z) | Other Variation | Variation Type Page 1 |
        | B.III(z) | CEP/TSE/Monographs: Other variation | Variation Type Page 1 |
        | B.IV.1(z) | Other variation | Variation Type Page 1 |
        | B.IV.2(z) | Other variation | Variation Type Page 1 |
        | B.IV.3(z) | Other variation | Variation Type Page 1 |
        | B.IV(z) | Change in medical devices: Other Variation | Variation Type Page 1 |
        | B.V.a.1(z) | Other variation | Variation Type Page 1 |
        | B.V.a.2(z) | Other variation | Variation Type Page 1 |
        | B.V.b.1(z) | Other variation | Variation Type Page 1 |
        | B(z) | Other variation | Variation Type Page 1 |
        | C.I.1(z) | Other variation | Variation Type Page 1 |
        | C.I.2(z) | Other variation | Variation Type Page 1 |
        | C.I.4(z) | Other variation | Variation Type Page 1 |
        | C.I.6(z) | Other variation | Variation Type Page 1 |
        | C.I.7(z) | Other variation | Variation Type Page 1 |
        | C.I.9(z) | Other variation | Variation Type Page 1 |
        | C.I.11(z) | Other variation | Variation Type Page 1 |
        | C.I.12(z) | Other variation | Variation Type Page 1 |
        | C.I.13(z) | Other variation | Variation Type Page 1 |
        | C.I(z) | Other variation | Variation Type Page 1 |
        | C.I(z).1 | Changes (Safety/Efficacy) to human and veterinary medicinal products | Variation Type Page 1 |
        | C.II(z) | Changes to Veterinary Medicinal Products: Other Variation | Variation Type Page 1 |

    @FPL-5041A-2
    Scenario: User selects 'Yes'
        Given the user has been directed to the 'Confirm Remove Variation' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @FPL-5041A-3
    Scenario: User selects 'No'
        Given the user has been directed to the 'Confirm Remove Variation' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they will be directed to the 'Check your answers' page

    @FPL-5041A-4
    Scenario: User does not select an option
        Given the user has been directed to the 'Confirm Remove Variation' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue