Feature: User checks their answers
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0012D
        Jira: GS-13

    Background:
        Given a 'Public User' that is authenticated for organisation with reference '10347'

    @APL-0012D-1
    @TestData::TDG-Variation-IB-Only-And-Common-Draft-Ready-For-Submission
    Scenario: User checks their answers, having previously selected 'IB Only And Common' and completing all sections
        And they resume the incomplete application where product name contains 'APL-0012D-1'
        And they navigate to the 'Variation Single One-Product Check Your Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Single' and a change link leading to 'Variation Select Procedure Type'
        And they will see a 'Procedure Option' row with value 'One change to one product' and a change link leading to 'Variation Single Procedure Options'
        And they will see a section header 'IB Only And Common variation details' with status 'completed'
        And they will see a 'IB Only And Common Variation Code' row with value 'IB.Only.And.Common' and a change link leading to 'Variation Single One-Product Enter Variation Code'
        And they will not see a 'IB Only And Common Variation Implementation' row
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Single One-Product Supporting Documents'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Single One-Product Application Contact Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Single One-Product Finance Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Single One-Product Declaration' page