Feature: User answers the Article 5 question
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0011A

    Background:
        Given startMaNavToOneMultipleProductVariation
        And they select the 'Z.Only.And.Common' option and click continue
        And they are directed to the 'Variation Single One-Product Select-Variation-Type' page
        And they select the 'IA' option and click continue
        And they are directed to the 'Variation Single One-Product Implementation-Date' page
        And they enter an implementation date and click continue
        And are they directed to the 'Variation Single One-Product Article-5' page

    @APL-0011A-1
    Scenario: User answers the Article 5 question
        And they will see a page header 'Does this variation conform to Article 5'
        And they will see a caption 'Is this an unforeseen variation that conforms to Article 5 of Regulatory EU 1234/2008?'
        And they will see a caption '! This should already have been agreed with the Veterinary Medicines Directorate'
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And a 'Continue' button
        When they select the 'Yes' option and click continue
        Then they are directed to the 'Variation Single One-Product Describe-Changes' page

    @APL-0011A-2
    Scenario: User does not answer the Article 5 question
        When they click the 'Continue' button
        Then they are directed to the 'Variation Single One-Product Article-5' page
        And they will see a warning message stating 'Select an option'
        And they will not be able to continue