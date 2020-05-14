Feature: User enters Implementation Date 
    Description:
        Epic: Procedure G: IB/II - sev ch, sev rel prds 
        Reference: GPL-6009

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Group of IB/II changes' option and click continue
        And they are directed to the 'Variation Type IB/II Procedure-Options' page
        And they select the 'Several changes to several related products' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes Multiple-Products Select-Product-2' page
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes Multiple-Products Enter-Variation-Code' page

    @GPL-6009-1
    Scenario: User enters an Implementation Date, having previously selected 'IA Only' group code
        And they select the 'IA.Only.And.Common' option and click continue
        And they will be directed to the 'Variation Type IB/II Several-Changes Multiple-Products Implementation-Date' page
        And they will see a page header 'Enter the implementation date'
        And they will see a caption 'For example: 31 3 2019'
        When they enter the number '21' into the 'implementation date day' number input
        And they enter the number '11' into the 'implementation date month' number input
        And they enter the number '2020' into the 'implementation date year' number input
        And they click the 'Continue' button
        Then they will be directed to the 'Variation Type IB/II Several-Changes Multiple-Products Describe-Changes' page

    @GPL-6009-2
    Scenario: User enters an Implementation Date, having previously selected 'Z Only' group code
        And they select the 'Z.Only.And.Common' option and click continue
        And they will be directed to the 'Variation Type IB/II Several-Changes Multiple-Products Select-Variation-Type' page
        And they select the 'IA' option and click continue
        And they will be directed to the 'Variation Type IB/II Several-Changes Multiple-Products Implementation-Date' page
        And they will see a page header 'Enter the implementation date'
        And they will see a caption 'For example: 31 3 2019'
        When they enter the number '21' into the 'implementation date day' number input
        And they enter the number '11' into the 'implementation date month' number input
        And they enter the number '2020' into the 'implementation date year' number input
        And they click the 'Continue' button
        Then they will be directed to the 'Variation Type IB/II Several-Changes Multiple-Products Article 5' page

    @GPL-6009-3
    Scenario Outline: User enters an invalid dates
        And they select the 'IA.Only.And.Common' option and click continue
        And they will be directed to the 'Variation Type IB/II Several-Changes Multiple-Products Implementation-Date' page
        When they enter the number '<Day>' into the 'implementation date day' number input
        And they enter the number '<Month>' into the 'implementation date month' number input
        And they enter the number '<Year>' into the 'implementation date year' number input
        And they click the 'Continue' button
        Then they will see an error message stating '<Error>'
        
    Examples: 
        | Day | Month | Year | Error |
        | 33 | 9  | 2019 | Enter a real Implementation date |
        |    | 9  | 2019 | Implementation date must include a day  |
        | 21 |    | 2019 | Implementation date must include a month |
        | 21 | 9  |      | Implementation date must include a year |
        |    |    | 2019 | Implementation date must include a day and month |
        |    | 9  |      | Implementation date must include a day and year |
        | 21 |    |      | Implementation date must include a month and year |
        |    |    |      | Implementation date must include a day, month and year |