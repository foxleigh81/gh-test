Feature: User answers the Article 5 question
    Description:
        Epic: Procedure F: IB/II - sev ch, 1  prd 
        Reference: FPL-5011A

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Group of IB/II changes' option and click continue
        And they are directed to the 'Variation Type IB/II Procedure-Options' page
        And they select the 'Several changes to one product' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Product-1' page
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Enter-Variation-Code' page
        And they select the 'Z.Only.And.Common' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-Variation-Type' page
        And they select the 'IA' option and click continue
        And they are directed to the 'Variation Type IB/II Several-Changes One-Product Implementation-Date' page
        And they enter an implementation date and click continue
        And are they directed to the 'Variation Type IB/II Several-Changes One-Product Article-5' page

    @FPL-5011A-1
    Scenario: User answers the Article 5 question
        And they will see a page header 'Does this variation conform to Article 5'
        And they will see a caption 'Is this an unforeseen variation that conforms to Article 5 of Regulatory EU 1234/2008?'
        And they will see a caption '! This should already have been agreed with the Veterinary Medicines Directorate'
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And a 'Continue' button
        When they select the 'Yes' option and click continue
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Describe-Changes' page

    @FPL-5011A-2
    Scenario: User does not answer the Article 5 question
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Article-5' page
        And they will see a warning message stating 'Select an option'
        And they will not be able to continue