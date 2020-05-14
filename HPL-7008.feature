Feature: User selects the variation type
    Description:
        Epic: Procedure H: Workshare 1 ch, sev un prds
        Reference: HPL-7008

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Workshare' option and click continue
        And they are directed to the 'Variation Workshare Procedure Options' page
        And they select the 'One change to several unrelated products' option and click continue
        And they are directed to the 'Variation Workshare One-Change Multiple-Products Select-Product-2' page
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Workshare One-Change Multiple-Products Enter Variation Code' page

    @HPL-7008-1
    Scenario: User selects variation type IA, having previously selected 'IAIB' group code
        And they select the 'IA.IB.And.Common' option and click continue
        And they will be directed to the 'Variation Workshare One-Change Multiple-Products Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they select the 'IA' option and click continue
        Then they will be directed to the 'Variation Workshare One-Change Multiple-Products Implementation Date' page

    @HPL-7008-2
    Scenario: User selects variation type IB, having previously selected 'IAIB' group code
        And they select the 'IA.IB.And.Common' option and click continue
        And they will be directed to the 'Variation Workshare One-Change Multiple-Products Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they select the 'IB' option and click continue
        Then they will be directed to the 'Variation Workshare One-Change Multiple-Products Article 5' page

    @HPL-7008-3
    Scenario: User doesnt select variation type and clicks continue, having previously selected 'IAIB' group code
        And they select the 'IA.IB.And.Common' option and click continue
        And they will be directed to the 'Variation Workshare One-Change Multiple-Products Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Workshare One-Change Multiple-Products Select Variation Type' page
        And they will see a warning message stating 'Please select a variation type'
        And they will not be able to continue

    @HPL-7008-4
    Scenario: User selects variation type IA, having previously selected 'Z Only' group code
        And they select the 'Z.Only.And.Common' option and click continue
        And they will be directed to the 'Variation Workshare One-Change Multiple-Products Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a radio button option for 'II'
        And a 'Continue' button
        When they select the 'IA' option and click continue
        Then they will be directed to the 'Variation Workshare One-Change Multiple-Products Implementation Date' page

    @HPL-7008-5
    Scenario: User selects variation type IB, having previously selected 'Z Only' group code
        And they select the 'Z.Only.And.Common' option and click continue
        And they will be directed to the 'Variation Workshare One-Change Multiple-Products Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a radio button option for 'II'
        And a 'Continue' button
        When they select the 'IB' option and click continue
        Then they will be directed to the 'Variation Workshare One-Change Multiple-Products Article 5' page

    @HPL-7008-6
    Scenario: User selects variation type II, having previously selected 'Z Only' group code
        And they select the 'Z.Only.And.Common' option and click continue
        And they will be directed to the 'Variation Workshare One-Change Multiple-Products Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a radio button option for 'II'
        And a 'Continue' button
        When they select the 'II' option and click continue
        Then they will be directed to the 'Variation Workshare One-Change Multiple-Products Article 5' page

    @HPL-7008-7
    Scenario: User doesnt select code and clicks continue, having previously selected 'Z Only' group code
        And they select the 'Z.Only.And.Common' option and click continue
        And they will be directed to the 'Variation Workshare One-Change Multiple-Products Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Workshare One-Change Multiple-Products Select Variation Type' page
        And they will see a warning message stating 'Please select a variation type'
        And they will not be able to continue

    @HPL-7008-8
    Scenario: User navigates to page, having previously selected 'IA Only' group code
        And they select the 'IA.Only.And.Common' option and click continue
        And they will be directed to the 'Variation Workshare One-Change Multiple-Products Implementation Date' page
        When they navigate to the 'Variation Workshare One-Change Multiple-Products Select Variation Type' page
        And they will see a page title with the value 'Sorry, there is a problem with the service'