Feature: User checks their answers
    Description:
        Epic: Procedure F: IB/II - sev ch, 1  prd 
        Reference: FPL-5015D

    Background:
        Given a 'Public User' is authenticated for organisation with reference '10347'

    @FPL-5015D-1
    Scenario: User checks their answers having previously entered an IA Only code, and a second IA Only code, and completing all sections
        And they resume the incomplete application where product name contains 'FPL-5015D-1'
        And they navigate to the 'Variation Type IB/II Several-Changes One-Product Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Group of IB/II Changes' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'Several changes to one product' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Select-Product-1'
        And they will see an 'Add another product' link
        And they will see a section header 'Variation Details'
        And they will see a sub header 'Administrative information concerning the holders representative'
        And they will see a 'Code' row with value 'C.II.6(a)' and a remove link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Administrative information concerning the holders representative' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a sub header 'Administrative information concerning the holders representative'
        And they will see a 'Code' row with value 'C.II.6(a)' and a remove link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Administrative information concerning the holders representative' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see an 'Add another variation' link
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Upload DossierVariation Type IB/II Several-Changes One-Product Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Declaration' page

    @FPL-5015D-2
    Scenario: User checks their answers having previously entered an IA Only code, and a second Z Only code,IB variation type, and completing all sections
        And they resume the incomplete application where product name contains 'FPL-5015D-2'
        And they navigate to the 'Variation Type IB/II Several-Changes One-Product Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Group of IB/II Changes' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'Several changes to one product' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Select-Product-1'
        And they will see an 'Add another product' link
        And they will see a section header 'Variation Details'
        And they will see a sub header 'Administrative information concerning the holders representative'
        And they will see a 'Code' row with value 'C.II.6(a)' and a remove link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Administrative information concerning the holders representative' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Implementation-Date'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will not see a 'IA Only Variation Article-5' row
        And they will see a sub header 'Change in the manufacture of the active substance: Other variation'
        And they will see a 'Code' row with value 'B.I.a(z)' and a remove link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Change in the manufacture of the active substance: Other variation' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IB'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation Type IB/IISeveral-Changes One-Product Article 5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will not see a 'Z Only Variation Implementation-Date' row
        And they will see an 'Add another variation' link
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Upload DossierVariation Type IB/II Several-Changes One-Product Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Declaration' page

    @FPL-5015D-3
    Scenario: User checks their answers having previously entered an IAIB Only code,IB variation type, and a second Z Only code,IA variation type, and completing all sections
        And they resume the incomplete application where product name contains 'FPL-5015D-3'
        And they navigate to the 'Variation Type IB/II Several-Changes One-Product Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Group of IB/II Changes' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'Several changes to one product' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Select-Product-1'
        And they will see an 'Add another product' link
        And they will see a section header 'Variation Details'
        And they will see a sub header 'Introduction of a new site of micronisation'
        And they will see a 'Code' row with value 'B.I.a.1(i)' and a remove link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Introduction of a new site of micronisation' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IB'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will not see a 'IA.IB Variation Article-5' row
        And they will not see a 'IA.IB Variation Implementation-Date' row
        And they will see a sub header 'Change in the manufacture of the active substance: Other variation'
        And they will see a 'Code' row with value 'B.I.a(z)' and a remove link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Change in the manufacture of the active substance: Other variation' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Implementation-Date'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation Type IB/IISeveral-Changes One-Product Article 5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see an 'Add another variation' link
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Upload DossierVariation Type IB/II Several-Changes One-Product Upload-Dossier'
        And they will see a section header 'Supporting Documents' with status 'completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Supporting-Documents'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Declaration' page

    @FPL-5015D-4
    Scenario: User checks their answers having not completed all sections
        And they resume the incomplete application where product name contains 'FPL-5015D-4'
        And they navigate to the 'Variation Type IB/II Several-Changes One-Product Check-Your-Answers' page
        And they will see a section header 'Product Details' with status 'completed'
        And they will see a 'Procedure Type' row with value 'Group of IB/II Changes' and a change link leading to 'Variation Select-Procedure-Type'
        And they will see a 'Procedure Option' row with value 'Several changes to one product' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Procedure-Options'
        And they will see a 'Product(s)' row with value 'Selected product' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Select-Product-1'
        And they will see an 'Add another product' link
        And they will see a section header 'Variation Details'
        And they will see a sub header 'Introduction of a new site of micronisation'
        And they will see a 'Code' row with value 'B.I.a.1(i)' and a remove link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Introduction of a new site of micronisation' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IB'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will not see a 'IA.IB Variation Article-5' row
        And they will not see a 'IA.IB Variation Implementation-Date' row
        And they will see a sub header 'Change in the manufacture of the active substance: Other variation'
        And they will see a 'Code' row with value 'B.I.a(z)' and a remove link leading to 'Variation Type IB/II Several-Changes One-Product Confirm-Change-Variation-Code'
        And they will see a 'Change in the manufacture of the active substance: Other variation' row with value 'Description'
        And they will see a 'Variation Type' row with value 'IA'
        And they will see a 'Implementation Date' row with value '21/11/2020' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Implementation-Date'
        And they will see a 'Article 5' row with value 'Yes' and a change link leading to 'Variation Type IB/IISeveral-Changes One-Product Article 5'
        And they will see a 'Present' row with value 'Present Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see a 'Proposed' row with value 'Proposed Text' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Describe-Changes'
        And they will see an 'Add another variation' link
        And they will see a section header 'Supporting Documents' with status 'Incomplete' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Supporting-Documents'
        And they will see a section header 'Uploaded Files' with status 'Completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Upload DossierVariation Type IB/II Several-Changes One-Product Upload-Dossier'
        And they will see a section header 'Contact Details' with status 'completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Application-Contact-Details'
        And they will see a section header 'Finance Details' with status 'completed' and a change link leading to 'Variation Type IB/II Several-Changes One-Product Finance-Details'
        When they click the 'Continue' button
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Check-Your-Answers' page
        And they will see a warning message stating 'You must complete all sections to continue'
        And they will not be able to continue

    @FPL-5015D-5
    Scenario: User selects the 'Add another product' link
        And they resume the incomplete application where product name contains 'FPL-5015D-5'
        And they navigate to the 'Variation Type IB/II Several-Changes One-Product Check-Your-Answers' page
        When they select the 'Add another product' link
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Select-product-2' page

    @FPL-5015D-6
    Scenario: User selects the 'Add another variation' link
        And they resume the incomplete application where product name contains 'FPL-5015D-6'
        And they navigate to the 'Variation Type IB/II Several-Changes One-Product Check-Your-Answers' page
        When they select the 'Add another variation' link
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Enter-variation-code' page

    @FPL-5015D-7
    Scenario: User who has completed two variation sections removes a variation
        And they resume the incomplete application where product name contains 'FPL-5015D-7'
        And they navigate to the 'Variation Type IB/II Several-Changes One-Product Check-Your-Answers' page
        And they have completed 2 variation sections
        When they select the 'Remove' link
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Add-Another-Variation-Code' page

    @FPL-5015D-8
    Scenario: User who has completed more than two variation sections removes a variation
        And they resume the incomplete application where product name contains 'FPL-5015D-8'
        And they navigate to the 'Variation Type IB/II Several-Changes One-Product Check-Your-Answers' page
        And they have completed 3 variation sections
        When they select the 'Remove' link
        Then they are directed to the 'Variation Type IB/II Several-Changes One-Product Check-Your-Answers' page