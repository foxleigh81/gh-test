Feature: User selects procedure option 
    Description:
        Epic: Procedure E:  IA changes - sev ch, sev unr prds 
        Reference: EPL-4003
        Jira: GS-243

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Group of IA changes' option and click continue
        And they are directed to the 'Variation Type IA Procedure Options' page

    @EPL-4003-1
    Scenario: User selects 'Several changes to several unrelated products' option
        And they will see a page header 'Select procedure option'
        And they will see a radio button option for 'Several changes to one product'
        And they will see a radio button option for 'One change to several unrelated products'
        And they will see a radio button option for 'Several changes to several unrelated products'
        And a 'Continue' button
        When they select the 'Several changes to several unrelated products' option and click continue
        Then they are directed to the 'Variation Type IA Several-Changes Multiple-Products Select-Product-2' page