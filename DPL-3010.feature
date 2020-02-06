Feature: User answers the Article 5 question
    Description:
        Epic: Procedure D:  IA changes - sev ch, 1  prd 
        Reference: DPL-3010

    Background:
        Given startMaNavToTypeIASevChangesMultipleProductsSelection
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Type IA Several-Changes One-Product  Enter-Variation-Code' page
        And they select the 'Z.Only.And.Common' option and click continue
        And they are directed to the 'Variation Type IA Several-Changes One-Product Implementation-Date' page
        And they enter an implementation date and click continue
        And are they directed to the 'Variation Type IA Several-Changes One-Product Article-5' page

    @DPL-3010-1
    Scenario: User answers the Article 5 question
        And they will see a page header 'Does this variation conform to Article 5'
        And they will see a caption 'Is this an unforeseen variation that conforms to Article 5 of Regulatory EU 1234/2008?'
        And they will see a caption '! This should already have been agreed with the Veterinary Medicines Directorate'
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And a 'Continue' button
        When they select the 'Yes' option and click continue
        Then they are directed to the 'Variation Type IA One-Change Multiple-Products Describe-Changes' page

    @DPL-3010-2
    Scenario: User does not answer the Article 5 question
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IA One-Change Multiple-Products Article-5' page
        And they will see a warning message stating 'Select an option'
        And they will not be able to continue