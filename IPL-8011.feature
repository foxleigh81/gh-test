Feature: User describes proposed changes
    Description:
        Epic: Procedure I: Workshare Sev ch, sev un prds
        Reference: IPL-8011

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
        And they select the 'IB.Only.And.Common' option and click continue
        And they are directed to the 'Variation Workshare Several-Changes Multiple-Products Describe Changes' page

    @IPL-8011-1
    Scenario: User Enters describes proposed changes
        And they enter the text 'Present' into the 'Present Situation' text area
        And they enter the text 'Proposed' into the 'Proposed Solution' text area
        When they click the 'Continue' button
        And they will be directed to the 'Variation Workshare Several-Changes Multiple-Products Enter-Second-Variation-Code' page

    @IPL-8011-2
    Scenario: User does not enter text for present situtation or proposed solution
        When they click the 'Continue' button
        And they will be directed back to the 'Outline the present situation' page
        Then they will see a warning message stating 'Outline the proposed solution'
        And they will see a warning message stating 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'

    @IPL-8011-3
    Scenario: User does not enter text for present situation
        And they enter the text 'Proposed' into the 'Proposed Solution' text area
        When they click the 'Continue' button
        Then they will be directed back to the 'Variation Workshare Several-Changes Multiple-Products Describe-Changes' page
        And they will see a warning message stating 'Outline the present situation'
        And they will not be able to continue

    @IPL-8011-4
    Scenario: User does not enter text for proposed solution
        And they enter the text 'Present' into the 'Present Situation' text area
        When they click the 'Continue' button
        Then they will be directed back to the 'Outline the proposed solution' page
        And they will see a warning message stating 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will not be able to continue