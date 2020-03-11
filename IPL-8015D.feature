Feature: User checks their answers
    Description:
        Epic: Procedure I: Workshare Sev ch, sev un prds
        Reference: IPL-8015D

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'

    @IPL-8015D-1
    Scenario: User checks their answers having previously entered an IA Only code, and a second IA Only code, and completing all sections
        And they resume the incomplete application where product name contains 'IPL-8015D-1'
        And they navigate to the 'Variation Workshare Several-Changes Multiple-Products Check-Your-Answers' page
        MISSING VALUE
        And they will see an 'Add another product' link
        And they will see a section header 'Variation Details'
        And they will see a sub header 'Administrative information concerning the holders representative'
        And they will see a 'Code' row with value 'C.II.6(a)' and a remove link leading to 'Variation Workshare Several-Changes Multiple-Products Confirm-Change-Variation-Code'
        And they will see a 'Administrative information concerning the holders representative' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a sub header 'Administrative information concerning the holders representative'
        And they will see a 'Code' row with value 'C.II.6(a)' and a remove link leading to 'Variation Workshare Several-Changes Multiple-Products Confirm-Change-Variation-Code'
        And they will see a 'Administrative information concerning the holders representative' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see an 'Add another variation' link
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Upload DossierVariation Workshare Several-Changes Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare Several-Changes Multiple-Products Declaration' page

    @IPL-8015D-2
    Scenario: User checks their answers having previously entered an IA Only code, and a second Z Only code,IB variation type, and completing all sections
        And they resume the incomplete application where product name contains 'IPL-8015D-2'
        And they navigate to the 'Variation Workshare Several-Changes Multiple-Products Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Workshare' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'Several changes to several unrelated products' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Select-Product-2'
        And they will see an 'Add another product' link
        And they will see a section header 'Variation Details'
        And they will see a sub header 'Administrative information concerning the holders representative'
        And they will see a 'Code' row with value 'C.II.6(a)' and a remove link leading to 'Variation Workshare Several-Changes Multiple-Products Confirm-Change-Variation-Code'
        And they will see a 'Administrative information concerning the holders representative' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a sub header 'Change in the manufacture of the active substance: Other variation'
        And they will see a 'Code' row with value 'B.I.a(z)' and a remove link leading to 'Variation Workshare Several-Changes Multiple-Products Confirm-Change-Variation-Code'
        And they will see a 'Change in the manufacture of the active substance: Other variation' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IB'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation WorkshareSeveral-Changes Multiple-Products Article 5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will not see a 'Z Only Variation Implementation-Date' row
        And they will see an 'Add another variation' link
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Upload DossierVariation Workshare Several-Changes Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare Several-Changes Multiple-Products Declaration' page

    @IPL-8015D-3
    Scenario: User checks their answers having previously entered an IAIB Only code,IB variation type, and a second Z Only code,IA variation type, and completing all sections
        And they resume the incomplete application where product name contains 'IPL-8015D-3'
        And they navigate to the 'Variation Workshare Several-Changes Multiple-Products Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Workshare' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'Several changes to several unrelated products' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Select-Product-2'
        And they will see an 'Add another product' link
        And they will see a section header 'Variation Details'
        And they will see a sub header 'Introduction of a new site of micronisation'
        And they will see a 'Code' row with value 'B.I.a.1(i)' and a remove link leading to 'Variation Workshare Several-Changes Multiple-Products Confirm-Change-Variation-Code'
        And they will see a 'Introduction of a new site of micronisation' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IB'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will not see a 'IA.IB Variation Article-5' row
        And they will not see a 'IA.IB Variation Implementation-Date' row
        And they will see a sub header 'Change in the manufacture of the active substance: Other variation'
        And they will see a 'Code' row with value 'B.I.a(z)' and a remove link leading to 'Variation Workshare Several-Changes Multiple-Products Confirm-Change-Variation-Code'
        And they will see a 'Change in the manufacture of the active substance: Other variation' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Implementation-Date'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation WorkshareSeveral-Changes Multiple-Products Article 5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will see an 'Add another variation' link
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Upload DossierVariation Workshare Several-Changes Multiple-Products Upload-Dossier'
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Supporting-Documents'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare Several-Changes Multiple-Products Declaration' page

    @IPL-8015D-4
    Scenario: User checks their answers having not completed all sections
        And they resume the incomplete application where product name contains 'IPL-8015D-4'
        And they navigate to the 'Variation Workshare Several-Changes Multiple-Products Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Workshare' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'Several changes to several unrelated products' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Select-Product-2'
        And they will see an 'Add another product' link
        And they will see a section header 'Variation Details'
        And they will see a sub header 'Introduction of a new site of micronisation'
        And they will see a 'Code' row with value 'B.I.a.1(i)' and a remove link leading to 'Variation Workshare Several-Changes Multiple-Products Confirm-Change-Variation-Code'
        And they will see a 'Introduction of a new site of micronisation' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IB'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will not see a 'IA.IB Variation Article-5' row
        And they will not see a 'IA.IB Variation Implementation-Date' row
        And they will see a sub header 'Change in the manufacture of the active substance: Other variation'
        And they will see a 'Code' row with value 'B.I.a(z)' and a remove link leading to 'Variation Workshare Several-Changes Multiple-Products Confirm-Change-Variation-Code'
        And they will see a 'Change in the manufacture of the active substance: Other variation' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Implementation-Date'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation WorkshareSeveral-Changes Multiple-Products Article 5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Describe-Changes'
        And they will see an 'Add another variation' link
        And they will see a section header 'Supporting Documents' with status 'Incomplete' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Upload DossierVariation Workshare Several-Changes Multiple-Products Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Workshare Several-Changes Multiple-Products Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Workshare Several-Changes Multiple-Products Check-Your-Answers' page
        And they will see a warning message stating 'You must complete all sections to continue'
        And they will not be able to continue

    @IPL-8015D-5
    Scenario: User selects the 'Add another product' link
        And they resume the incomplete application where product name contains 'IPL-8015D-5'
        And they navigate to the 'Variation Workshare Several-Changes Multiple-Products Check-Your-Answers' page
        When they select the 'Add another product' link
        Then they are directed to the 'Variation Workshare Several-Changes Multiple-Products Select-product-2' page

    @IPL-8015D-6
    Scenario: User selects the 'Add another variation' link
        And they resume the incomplete application where product name contains 'IPL-8015D-6'
        And they navigate to the 'Variation Workshare Several-Changes Multiple-Products Check-Your-Answers' page
        When they select the 'Add another variation' link
        Then they are directed to the 'Variation Workshare Several-Changes Multiple-Products Enter-variation-code' page

    @IPL-8015D-7
    Scenario: User who has completed two variation sections removes a variation
        And they resume the incomplete application where product name contains 'IPL-8015D-7'
        And they navigate to the 'Variation Workshare Several-Changes Multiple-Products Check-Your-Answers' page
        And they have completed 2 variation sections
        When they select the 'Remove' link
        Then they are directed to the 'Variation Workshare Several-Changes Multiple-Products Add-Another-Variation-Code' page

    @IPL-8015D-8
    Scenario: User who has completed more than two variation sections removes a variation
        And they resume the incomplete application where product name contains 'IPL-8015D-8'
        And they navigate to the 'Variation Workshare Several-Changes Multiple-Products Check-Your-Answers' page
        And they have completed 3 variation sections
        When they select the 'Remove' link
        Then they are directed to the 'Variation Workshare Several-Changes Multiple-Products Check-Your-Answers' page