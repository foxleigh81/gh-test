Feature: User describes proposed changes
    Description:
        Epic: Procedure B: Single Change, Several Products
        Reference: BPL-1011
        Jira: GS-100

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'
        And they select 'make application'
        And they select the 'Vary a marketing authorisation' option and click continue
        And they are directed to the 'Variation Select Procedure Type' page
        And they select the 'Single' option and click continue
        And they are directed to the 'Variation Single Procedure Options' page
        And they select the 'One change to several products' option and click continue
        And they are directed to the 'Variation Single Multiple-Products Select-Products-2' page
        And they select 'Acecare 2mg/ml Solution for Injection for Dogs and Cats'
        And they select the 'Isocare 1000 mg/g Inhalation Vapour, Liquid' option and click continue
        And they are directed to the 'Variation Single Multiple-Products Enter Variation Code' page
        And they select the 'IB.Only.And.Common' option and click continue
        And they are directed to the 'Variation Single Multiple-Products Describe Changes' page

    @BPL-1011-1
    Scenario: User Enters describes proposed changes
        And they enter the text 'Present' into the 'Present Situation' text area
        And they enter the text 'Proposed' into the 'Proposed Solution' text area
        When they click the 'Continue' button
        And they are directed to the 'Variation Single Multiple-Products Supporting Documents' page

    @BPL-1011-2
    Scenario: User does not enter text for present situtation or proposed solution
        When they click the 'Continue' button
        Then they will see a warning message stating 'Please outline the present situation'
        And they will see a warning message stating 'Please outline the proposed solution'
        And they are directed to the 'Variation Single Multiple-Products Describe Changes' page

    @BPL-1011-3
    Scenario: User does not enter text for present situation
        And they enter the text 'Proposed' into the 'Proposed Solution' text area
        When they click the 'Continue' button
        Then they are directed to the 'Variation Single Multiple-Products Describe Changes' page
        And they will see a warning message stating 'Please outline the present situation'
        And they will not be able to continue

    @BPL-1011-4
    Scenario: User does not enter text for proposed solution
        And they enter the text 'Present' into the 'Present Situation' text area
        When they click the 'Continue' button
        Then they are directed to the 'Outline the proposed solution' page
        And they will see a warning message stating 'Variation Single Multiple-Products Describe Changes'
        And they will not be able to continue