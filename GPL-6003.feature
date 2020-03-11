Feature: User selects procedure option 
    Description:
        Epic: Procedure G: IB/II - sev ch, sev rel prds 
        Reference: GPL-6003

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Group of IB/II changes' option and click continue
        And they are directed to the 'Variation Type IB/II Procedure-Options' page

    @GPL-6003-1
    Scenario: User selects 'Several changes to several related products' option
        And they will see a page header 'Select procedure option'
        And they will see a radio button option for 'Several changes to one product'
        And they will see a radio button option for 'Several changes to several related products'
        And a 'Continue' button
        When they select the 'Several changes to one product' option and click continue
        Then they are directed to the 'Variation Type IB/II Several-Changes Multiple-Products Select-Product-2' page