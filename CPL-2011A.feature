Feature: User answers the Article 5 question
    Description:
        Epic: Procedure C:  IA changes - 1 ch, sev un prds 
        Reference: CPL-2011A

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Group of IA changes' option and click continue
        And they are directed to the 'Variation Type IA Procedure Options' page
        And they select the 'One change to one product' option and click continue
        And they are directed to the 'Variation Type IA One Change Multiple-Products Select Products' page
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Type IA One Change Multiple-Products Enter-Variation-Code' page
        And they select the 'Z.Only.And.Common' option and click continue
        And are directed to the 'Variation Type IA One Change Multiple-Products Article-5' page

    @CPL-2011A-1
    Scenario: User answers the Article 5 question
        
        Missing cells unable to complete step