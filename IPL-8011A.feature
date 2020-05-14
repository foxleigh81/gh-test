Feature: User answers the Article 5 question
    Description:
        Epic: Procedure I: Workshare Sev ch, sev un prds
        Reference: IPL-8011A

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'
        And they select 'Start an application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select-Procedure-Type' page
        And they select the 'Workshare' option and click continue
        And they are directed to the 'Variation Workshare Procedure Options' page
        And they select the 'Several changes to several unrelated products' option and click continue
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Select-Product-2' page
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Enter Variation Code' page
        And they select the 'Z.Only.And.Common' option and click continue
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Select-Variation-Type' page
        And they select the 'IA' option and click continue
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Implementation-Date' page
        And they enter an implementation date and click continue
        And are they directed to the 'Variation Workshare Several-Changes Multiple-Products Article-5' page

    @IPL-8011A-1
    Scenario: User answers the Article 5 question
        And they will see a page header 'Does this variation conform to Article 5'
        And they will see a caption 'Is this an unforeseen variation that conforms to Article 5 of Regulatory EU 1234/2008?'
        And they will see a caption '! This should already have been agreed with the Veterinary Medicines Directorate'
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And a 'Continue' button
        When they select the 'Yes' option and click continue
        Then they will be directed to the 'Variation Workshare Several-Changes Multiple-Products Describe-Changes' page

    @IPL-8011A-2
    Scenario: User does not answer the Article 5 question
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Workshare Several-Changes Multiple-Products Article-5' page
        And they will see a warning message stating 'Select an option'
        And they will not be able to continue