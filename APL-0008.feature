Feature: User selects the variation type
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0008

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Single' option and click continue
        And they are directed to the 'Variation Single Procedure Options' page
        And they select the 'One change to one product' option and click continue
        And they are directed to the 'Variation Single One-Product Select Products' page
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Single One-Product Enter Variation Code' page

    @APL-0008-1
    Scenario: User selects variation type IA, having previously selected 'IAIB' group code
        And they select the 'IA.IB.And.Common' option and click continue
        And they are directed to the 'Variation Single One-Product Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they select the 'IA' option and click continue
        Then they are directed to the 'Variation Single One-Product Implementation Date' page

    @APL-0008-2
    Scenario: User selects variation type IB, having previously selected 'IAIB' group code
        And they select the 'IA.IB.And.Common' option and click continue
        And they are directed to the 'Variation Single One-Product Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they select the 'IB' option and click continue
        Then they are directed to the 'Variation Single One-Product Article 5' page

    @APL-0008-3
    Scenario: User doesnt select code and clicks continue, having previously selected 'IAIB' group code
        And they select the 'IA.IB.And.Common' option and click continue
        And they are directed to the 'Variation Single One-Product Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they click the 'Continue' button
        Then they are directed to the 'Variation Single One-Product Select Variation Type' page
        And they will see a warning message stating 'Please select a variation type'

    @APL-0008-4
    Scenario: User selects variation type IA, having previously selected 'Z Only' group code
        And they select the 'Z.Only.And.Common' option and click continue
        And they are directed to the 'Variation Single One-Product Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a radio button option for 'II'
        And a 'Continue' button
        When they select the 'IA' option and click continue
        Then they are directed to the 'Variation Single One-Product Implementation Date' page

    @APL-0008-5
    Scenario: User selects variation type IB, having previously selected 'Z Only' group code
        And they select the 'Z.Only.And.Common' option and click continue
        And they are directed to the 'Variation Single One-Product Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a radio button option for 'II'
        And a 'Continue' button
        When they select the 'IB' option and click continue
        Then they are directed to the 'Variation Single One-Product Article 5' page

    @APL-0008-6
    Scenario: User selects variation type II, having previously selected 'Z Only' group code
        And they select the 'Z.Only.And.Common' option and click continue
        And they are directed to the 'Variation Single One-Product Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And they will see a radio button option for 'II'
        And a 'Continue' button
        When they select the 'II' option and click continue
        Then they are directed to the 'Variation Single One-Product Article 5' page

    @APL-0008-7
    Scenario: User doesnt select code and clicks continue, having previously selected 'Z Only' group code
        And they select the 'Z.Only.And.Common' option and click continue
        And they are directed to the 'Variation Single One-Product Select Variation Type' page
        And they will see a page header 'Select variation type'
        And they will see a radio button option for 'IA'
        And they will see a radio button option for 'IB'
        And a 'Continue' button
        When they click the 'Continue' button
        Then they are directed to the 'Variation Single One-Product Select Variation Type' page
        And they will see a warning message stating 'Please select a variation type'

    @APL-0008-8
    Scenario: User navigates to page, having previously selected 'IA Only' group code
        And they select the 'IA.Only.And.Common' option and click continue
        And they are directed to the 'Variation Single One-Product Implementation Date' page
        When they navigate to the 'Variation Single One-Product Select Variation Type' page
        And they will see a page title with the value 'Sorry, there is a problem with the service'