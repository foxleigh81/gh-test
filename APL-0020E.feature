Feature: User who has entered a valid code from Data Table IA + IB and has selected IA variation type checks and is able to change answers
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0020E
        Jira: GS-39

    Background: Given the user has completed the GS-38 steps

    @APL-0020E
    Scenario Outline: User who has entered a valid code from Data Table IA + IB and has selected IA variation type is directed to 'Check your answers' page 
        Given the user has been directed to the 'Check Your Answers' page
        And they have entered a value from Data Table 'IA + IB'
        And they have selected Variation Type 'IA' 
        When page 'Check Your Answers' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Check your answers before submitting'
        And a section header 'Product Details'
        And a table with a row with the list item 'Procedure Type' and the 'selected procedure type' displayed and a change link
        And a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed and a change link
        And a table with a row with the list item 'Products' and the 'selected products' displayed and a change link
        And a section header 'Add another product' with an 'Add another product' link
        And a section header 'Variation Details'
        And a table header 'Variation 1'
        And a table with a row with the list item 'Code' and the '<Sub Code>' displayed 
        And a table with a row containing the list item 'Description' and the 'Variation description' displayed and a 'Remove variation' link 
        And a table with a row with the list item 'Variation Type' and 'IA' displayed and a change link
        And a table with a row with the list item 'Implementation Date' and the 'entered implementation Date' displayed and a change link
        And a table with a row with the list item 'Present' and the 'present text' displayed and a change link
        And a table with a row with the list item 'Proposed' and the 'proposed change text' displayed and a change link
        And a section header 'Supporting Documents' with a 'Change' link
        And a table with a row with the list item 'Label/ Package leaflet text (QRD). If your variation affects the labelling and/ or package leaflet (QRD text). Please provide proposed versions (in editable Word format) for each product included in the application; do not provide mock-ups at this stage' and the 'selection status' displayed 
        And a table with a row with the list item 'Mock-Ups, if applicable. Only provide mock-ups if your variation is for the approval of mock-ups, e.g. C.II.6(b)' and the 'selection status' displayed 
        And a table with a row with the list item 'Copy of the relevant page(s) from the Variation Guideline for the change(s) with the relevant boxes for conditions and documentation ticked' and the 'selection status' displayed 
        And a table with a row with the list item 'Summary of the product characteristics (SPC), if applicable. If your variation affects the SPC, please provide proposed versions (in editable Word format) for each product included in the application' and the 'selection status' displayed 
        And a table with a row with the list item 'Omitted Documents' and the 'omitted documents text' displayed 
        And a table with a row with the list item 'Other Information' and the 'other information text' displayed 
        And a section header 'Contact Details' with a 'Change' link
        And a table with a row with the list item 'Contact name' and the 'entered contact name' displayed 
        And a table with a row with the list item 'Purchase order number' and the 'entered purchase order number' displayed 
        And a table with a row with the list item 'Contact number' and the 'entered contact number' displayed 
        And a table with a row with the list item 'Contact email address' and the 'entered contact email address' displayed 
        And a table with a row with the list item 'Invoice email address' and the 'entered invoice email address' displayed 
        And a table with a row with the list item 'Further comments' and the 'further comments text'  displayed 
        And they will see a save and exit link 
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | A.3 | Change in name of the active substance or of an excipient | Variation Type Page 2 |
        | A.4 | Change in the name and/or address of a manufacturer (including where relevant quality control testing sites); or an ASMF holder; or a supplier of the active substance, starting material, reagent or intermediate used in the manufacture of the active substance (where specified in the technical dossier) where no Ph. Eur. Certificate of Suitability is part of the approved dossier; or a manufacturer of a novel excipient (where specified in the technical dossier). | Variation Type Page 2 |
        | A.5(a) | The activities for which the manufacturer/importer is responsible include batch release | Variation Type Page 2 |
        | A.5(b) | The activities for which the manufacturer/importer is responsible do not include batch release | Variation Type Page 2 |
        | A.6 | Change in ATC Code / ATC Vet Code | Variation Type Page 2 |
        | A.7 | Deletion of a manufacturing sites (for an active substance, intermediate or finished product, packaging site, manufacturer responsible for batch release, site where batch control takes place, or supplier of a starting material, reagent or excipient (when mentioned in the dossier). Where notice has been given by the authorities of the intention to perform an inspection, the deletion of the relevant site shall be notified immediately. | Variation Type Page 2 |
        | B.I.a.1(a) | The proposed manufacturer is part of the same pharmaceutical group as the currently approved manufacturer. | Variation Type Page 2 |
        | B.I.a.1(f) | Changes to quality control testing arrangements for the active substance-replacement or addition of a site where batch control/testing takes place | Variation Type Page 2 |
        | B.I.a.1(i) | Introduction of a new site of micronisation | Variation Type Page 2 |
        | B.I.a.2(a) | Minor change in the manufacturing process of the active substance | Variation Type Page 2 |
        | B.I.a.3(a) | Up to 10-fold increase compared to the originally approved batch size | Variation Type Page 2 |
        | B.I.a.3(b) | Downscaling down to 10-fold | Variation Type Page 2 |
        | B.I.a.4(a) | Tightening of inprocess limits | Variation Type Page 2 |
        | B.I.a.4(b) | Addition of a new inprocess test and limits | Variation Type Page 2 |
        | B.I.a.4(c) | Deletion of a nonsignificant inprocess test | Variation Type Page 2 |
        | B.I.b.1(a) | Tightening of specification limits for medicinal products subject to Official Control Authority Batch Release | Variation Type Page 2 |
        | B.I.b.1(b) | Tightening of specification limits | Variation Type Page 2 |
        | B.I.b.1(c) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.I.b.1(d) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter) | Variation Type Page 2 |
        | B.I.b.2(a) | Minor changes to an approved test procedure | Variation Type Page 2 |
        | B.I.b.2(b) | Deletion of a test procedure for the active substance or a starting material/reagent/ intermediate, if an alternative test procedure is already authorised | Variation Type Page 2 |
        | B.I.b.2(c) | Other changes to a test procedure (including replacement or addition) for a reagent, which does not have a significant effect on the overall quality of the active substance | Variation Type Page 2 |
        | B.I.c.1(a) | Qualitative and/or quantitative composition | Variation Type Page 2 |
        | B.I.c.2(a) | Tightening of specification limits | Variation Type Page 2 |
        | B.I.c.2(b) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.I.c.2(c) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter) | Variation Type Page 2 |
        | B.I.c.3(a) | Minor changes to an approved test procedure | Variation Type Page 2 |
        | B.I.c.3(b) | Other changes to a test procedure (including replacement or addition) | Variation Type Page 2 |
        | B.I.c.3(c) | Deletion of a test procedure if an alternative test procedure is already authorised | Variation Type Page 2 |
        | B.I.d.1(a).1 | Reduction | Variation Type Page 2 |
        | B.I.d.1(b).1 | Change to more restrictive storage conditions of the active substance | Variation Type Page 2 |
        | B.I.d.1(c) | Change to an approved stability protocol | Variation Type Page 2 |
        | B.I.e.3 | Deletion of an approved change management protocol related to the active substance | Variation Type Page 2 |
        | B.I.e.5(a) | The implementation of the change requires no further supportive data | Variation Type Page 2 |
        | B.II.a.1(a) | Changes in imprints, bossing or other markings | Variation Type Page 2 |
        | B.II.a.2(a) | Immediate release tablets, capsules, suppositories and pessaries | Variation Type Page 2 |
        | B.II.a.3(a).1 | Addition, deletion or replacement | Variation Type Page 2 |
        | B.II.a.3(a).2 | Increase or reduction | Variation Type Page 2 |
        | B.II.a.3(b).1 | Any minor adjustment of the quantitative composition of the finished product with respect to excipients | Variation Type Page 2 |
        | B.II.a.4(a) | Solid oral pharmaceutical forms | Variation Type Page 2 |
        | B.II.b.1(a) | Secondary packaging site | Variation Type Page 2 |
        | B.II.b.1(b) | Primary packaging site | Variation Type Page 2 |
        | B.II.b.2(a) | Replacement or addition of a site where batch control/testing takes place | Variation Type Page 2 |
        | B.II.b.2(c).1 | Not including batch control/testing | Variation Type Page 2 |
        | B.II.b.2(c).2 | Including batch control/testing | Variation Type Page 2 |
        | B.II.b.3(a) | Minor change in the manufacturing process | Variation Type Page 2 |
        | B.II.b.4(a) | Up to 10-fold compared to the originally approved batch size | Variation Type Page 2 |
        | B.II.b.4(b) | Downscaling down to 10-fold | Variation Type Page 2 |
        | B.II.b.5(a) | Tightening of inprocess limits | Variation Type Page 2 |
        | B.II.b.5(b) | Addition of a new test(s) and limits | Variation Type Page 2 |
        | B.II.b.5(c) | Deletion of a nonsignificant inprocess test | Variation Type Page 2 |
        | B.II.c.1(a) | Tightening of specification limits | Variation Type Page 2 |
        | B.II.c.1(b) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.II.c.1(c) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter) | Variation Type Page 2 |
        | B.II.c.2(a) | Minor changes to an approved test procedure | Variation Type Page 2 |
        | B.II.c.2(b) | Deletion of a test procedure if an alternative test procedure is already authorised | Variation Type Page 2 |
        | B.II.c.3(a).1 | For excipients or reagents not used in the manufacture of a biological / immunological active substance or in a biological / immunological medicinal product | Variation Type Page 2 |
        | B.II.c.4(a) | Minor change in synthesis or recovery of a non-pharmacopoeial excipient or a novel excipient | Variation Type Page 2 |
        | B.II.d.1(a) | Tightening of specification limits | Variation Type Page 2 |
        | B.II.d.1(b) | Tightening of specification limits for medicinal products subject to Official Control Authority Batch Release | Variation Type Page 2 |
        | B.II.d.1(c) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.II.d.1(d) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter such as odour and taste or identification test for a colouring or flavouring material) | Variation Type Page 2 |
        | B.II.d.1(h) | Update of the dossier to comply with the provisions of an updated general monograph of the Ph. Eur for the finished product* | Variation Type Page 2 |
        | B.II.d.1(i) | Ph. Eur. 2.9.40 Uniformity of dosage units is introduced to replace the currently registered method, either Ph. Eur. 2.9.5 (Uniformity of mass). or Ph. Eur. 2.9.6 (Uniformity of content) | Variation Type Page 2 |
        | B.II.d.2(a) | Minor changes to an approved test procedure | Variation Type Page 2 |
        | B.II.d.2(b) | Deletion of a test procedure if an alternative method is already authorised | Variation Type Page 2 |
        | B.II.d.2(e) | Update of the test procedure to comply with the updated general monograph in the Ph.Eur. | Variation Type Page 2 |
        | B.II.d.2(f) | To reflect compliance with the Ph.EUR. and remove reference to the outdated internal test method and test method number* | Variation Type Page 2 |
        | B.II.e.1(a).1 | Solid pharmaceutical forms | Variation Type Page 2 |
        | B.II.e.1(b).3 | Deletion of an immediate packaging container that does not lead to the complete deletion of a strength or pharmaceutical form | Variation Type Page 2 |
        | B.II.e.2(a) | Tightening of specification limits | Variation Type Page 2 |
        | B.II.e.2(b) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.II.e.2(c) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter) | Variation Type Page 2 |
        | B.II.e.3(a) | Minor changes to an approved test procedure | Variation Type Page 2 |
        | B.II.e.3(b) | Other changes to a test procedure (including replacement or addition) | Variation Type Page 2 |
        | B.II.e.3(c) | Deletion of a test procedure if an alternative test procedure is already authorised | Variation Type Page 2 |
        | B.II.e.4(a) | Nonsterile medicinal products | Variation Type Page 2 |
        | B.II.e.5(a).1 | Change within the range of the currently approved pack sizes | Variation Type Page 2 |
        | B.II.e.5(b) | Deletion of a pack size(s) | Variation Type Page 2 |
        | B.II.e.6(a) | Change that affects the product information | Variation Type Page 2 |
        | B.II.e.6(b) | Change that does not affect the product information | Variation Type Page 2 |
        | B.II.e.7(a) | Deletion of a supplier | Variation Type Page 2 |
        | B.II.e.7(b) | Replacement or addition of a supplier | Variation Type Page 2 |
        | B.II.f.1(a).1 | As packaged for sale | Variation Type Page 2 |
        | B.II.f.1(a).2 | After first opening | Variation Type Page 2 |
        | B.II.f.1(a).3 | After dilution or reconstitution | Variation Type Page 2 |
        | B.II.f.1(e) | Change to an approved stability protocol | Variation Type Page 2 |
        | B.II.g.3 | Deletion of an approved change management protocol related to the finish product | Variation Type Page 2 |
        | B.II.g.5(a) | The implementation of the change requires no further supportive data | Variation Type Page 2 |
        | B.III.1(a).1 | New certificate from an already approved manufacturer | Variation Type Page 2 |
        | B.III.1(a).2 | Updated certificate from an already approved manufacturer | Variation Type Page 2 |
        | B.III.1(a).3 | New certificate from a new manufacturer (replacement or addition) | Variation Type Page 2 |
        | B.III.1(a).4 | Deletion of certificates (in case multiple certificates exist per material) | Variation Type Page 2 |
        | B.III.1(b).1 | New certificate for an active substance from a new or an already approved manufacturer | Variation Type Page 2 |
        | B.III.1(b).2 | New certificate for a starting material/reagent/intermediate/or excipient from a new or an already approved manufacturer | Variation Type Page 2 |
        | B.III.1(b).3 | Updated certificate from an already approved manufacturer | Variation Type Page 2 |
        | B.III.1(b).4 | Deletion of certificates (in case multiple certificates exist per material) | Variation Type Page 2 |
        | B.III.2(a).1 | Active substance | Variation Type Page 2 |
        | B.III.2(a).2 | Excipient/active substance starting material | Variation Type Page 2 |
        | B.III.2(b) | Change to comply with an update of the relevant monograph of the Ph. Eur. or national pharmacopoeia of a Member State | Variation Type Page 2 |
        | B.III.2(c) | Change in specifications from a national pharmacopoeia of a Member State to the Ph. Eur. | Variation Type Page 2 |
        | B.IV.1(a).1 | Device with CE marking | Variation Type Page 2 |
        | B.IV.1(b) | Deletion of a device | Variation Type Page 2 |
        | B.IV.2(a) | Tightening of specification limits | Variation Type Page 2 |
        | B.IV.2(b) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.IV.2(f) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter) | Variation Type Page 2 |
        | B.IV.3(a) | Minor change to an approved test procedure | Variation Type Page 2 |
        | B.IV.3(b) | Other changes to a test procedure (including replacement or addition) | Variation Type Page 2 |
        | B.IV.3(c) | Deletion of a test procedure if an alternative test procedure is already authorised | Variation Type Page 2 |
        | B.V.a.1(d) | Inclusion of an updated/amended Plasma Master File when changes do not affect the properties of the finished produc | Variation Type Page 2 |
        | B.V.a.2(c) | Inclusion of an updated/amended Vaccine Antigen Master File, when changes do not affect the properties of the finished product | Variation Type Page 2 |
        | B.V.b.1(a) | The change implements the outcome of the referral | Variation Type Page 2 |
        | C.I.1(a) | The medicinal product is covered by the defined scope of the procedure | Variation Type Page 2 |
        | C.I.9(a) | Change in the QPPV and/or QPPV contact details and/or back-up procedure | Variation Type Page 2 |
        | C.I.9(b) | Change(s) in the safety database and/or major contractual arrangements for the fulfilment of pharmacovigilance obligations, and/or change of the site undergoing pharmacovigilance activities. | Variation Type Page 2 |
        | C.I.9(c) | Other change(s) to the DDPS that does not impact on the operation of the pharmacovigilance system (e.g. change of the major storage/archiving location, administrative changes | Variation Type Page 2 |
        | C.I.9(d) | Change(s) to a DDPS following the assessment of the same DDPS in relation to another medicinal product of the same MAH | Variation Type Page 2 |
        | C.I.11(a) | Implementation of wording agreed by the competent authority | Variation Type Page 2 |
        | C.I.12 | Inclusion or deletion of black symbol and explanatory statements for medicinal products in the list of medicinal prodcuts that are subject to additional monitoring | Variation Type Page 2 |
        | C.II.8 | Change in the frequency and/or date of submission of periodic safety update reports (PSUR) | Variation Type Page 2 |

    @APL-0020E-1
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @APL-0020E-2
    Scenario: User selects change link for Variation Type
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Variation Type'
        When they select 'Variation Type change link'
        Then they will be directed to the 'Variation Type 2' page

    @APL-0020E-3
    Scenario: User selects change link for implementation date
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Implementation Date'
        When they select 'Implementation Date change link'
        Then they will be directed to the 'Implementation Date' page

    @APL-0020E-4
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Describe changes'
        When they select 'Describe changes change link'
        Then they will be directed to the 'Describe changes' page

    @APL-0020E-5
    Scenario Outline: User selects change variation link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change variation' link for 'Variation <Sub Code>'
        When they select 'change variation link'
        Then they will be directed to the 'Confirm Change Variation' page
        
    Examples: 
        | Sub Code | Description | Page |
        | A.3 | Change in name of the active substance or of an excipient | Variation Type Page 2 |
        | A.4 | Change in the name and/or address of a manufacturer (including where relevant quality control testing sites); or an ASMF holder; or a supplier of the active substance, starting material, reagent or intermediate used in the manufacture of the active substance (where specified in the technical dossier) where no Ph. Eur. Certificate of Suitability is part of the approved dossier; or a manufacturer of a novel excipient (where specified in the technical dossier). | Variation Type Page 2 |
        | A.5(a) | The activities for which the manufacturer/importer is responsible include batch release | Variation Type Page 2 |
        | A.5(b) | The activities for which the manufacturer/importer is responsible do not include batch release | Variation Type Page 2 |
        | A.6 | Change in ATC Code / ATC Vet Code | Variation Type Page 2 |
        | A.7 | Deletion of a manufacturing sites (for an active substance, intermediate or finished product, packaging site, manufacturer responsible for batch release, site where batch control takes place, or supplier of a starting material, reagent or excipient (when mentioned in the dossier). Where notice has been given by the authorities of the intention to perform an inspection, the deletion of the relevant site shall be notified immediately. | Variation Type Page 2 |
        | B.I.a.1(a) | The proposed manufacturer is part of the same pharmaceutical group as the currently approved manufacturer. | Variation Type Page 2 |
        | B.I.a.1(f) | Changes to quality control testing arrangements for the active substance-replacement or addition of a site where batch control/testing takes place | Variation Type Page 2 |
        | B.I.a.1(i) | Introduction of a new site of micronisation | Variation Type Page 2 |
        | B.I.a.2(a) | Minor change in the manufacturing process of the active substance | Variation Type Page 2 |
        | B.I.a.3(a) | Up to 10-fold increase compared to the originally approved batch size | Variation Type Page 2 |
        | B.I.a.3(b) | Downscaling down to 10-fold | Variation Type Page 2 |
        | B.I.a.4(a) | Tightening of inprocess limits | Variation Type Page 2 |
        | B.I.a.4(b) | Addition of a new inprocess test and limits | Variation Type Page 2 |
        | B.I.a.4(c) | Deletion of a nonsignificant inprocess test | Variation Type Page 2 |
        | B.I.b.1(a) | Tightening of specification limits for medicinal products subject to Official Control Authority Batch Release | Variation Type Page 2 |
        | B.I.b.1(b) | Tightening of specification limits | Variation Type Page 2 |
        | B.I.b.1(c) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.I.b.1(d) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter) | Variation Type Page 2 |
        | B.I.b.2(a) | Minor changes to an approved test procedure | Variation Type Page 2 |
        | B.I.b.2(b) | Deletion of a test procedure for the active substance or a starting material/reagent/ intermediate, if an alternative test procedure is already authorised | Variation Type Page 2 |
        | B.I.b.2(c) | Other changes to a test procedure (including replacement or addition) for a reagent, which does not have a significant effect on the overall quality of the active substance | Variation Type Page 2 |
        | B.I.c.1(a) | Qualitative and/or quantitative composition | Variation Type Page 2 |
        | B.I.c.2(a) | Tightening of specification limits | Variation Type Page 2 |
        | B.I.c.2(b) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.I.c.2(c) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter) | Variation Type Page 2 |
        | B.I.c.3(a) | Minor changes to an approved test procedure | Variation Type Page 2 |
        | B.I.c.3(b) | Other changes to a test procedure (including replacement or addition) | Variation Type Page 2 |
        | B.I.c.3(c) | Deletion of a test procedure if an alternative test procedure is already authorised | Variation Type Page 2 |
        | B.I.d.1(a).1 | Reduction | Variation Type Page 2 |
        | B.I.d.1(b).1 | Change to more restrictive storage conditions of the active substance | Variation Type Page 2 |
        | B.I.d.1(c) | Change to an approved stability protocol | Variation Type Page 2 |
        | B.I.e.3 | Deletion of an approved change management protocol related to the active substance | Variation Type Page 2 |
        | B.I.e.5(a) | The implementation of the change requires no further supportive data | Variation Type Page 2 |
        | B.II.a.1(a) | Changes in imprints, bossing or other markings | Variation Type Page 2 |
        | B.II.a.2(a) | Immediate release tablets, capsules, suppositories and pessaries | Variation Type Page 2 |
        | B.II.a.3(a).1 | Addition, deletion or replacement | Variation Type Page 2 |
        | B.II.a.3(a).2 | Increase or reduction | Variation Type Page 2 |
        | B.II.a.3(b).1 | Any minor adjustment of the quantitative composition of the finished product with respect to excipients | Variation Type Page 2 |
        | B.II.a.4(a) | Solid oral pharmaceutical forms | Variation Type Page 2 |
        | B.II.b.1(a) | Secondary packaging site | Variation Type Page 2 |
        | B.II.b.1(b) | Primary packaging site | Variation Type Page 2 |
        | B.II.b.2(a) | Replacement or addition of a site where batch control/testing takes place | Variation Type Page 2 |
        | B.II.b.2(c).1 | Not including batch control/testing | Variation Type Page 2 |
        | B.II.b.2(c).2 | Including batch control/testing | Variation Type Page 2 |
        | B.II.b.3(a) | Minor change in the manufacturing process | Variation Type Page 2 |
        | B.II.b.4(a) | Up to 10-fold compared to the originally approved batch size | Variation Type Page 2 |
        | B.II.b.4(b) | Downscaling down to 10-fold | Variation Type Page 2 |
        | B.II.b.5(a) | Tightening of inprocess limits | Variation Type Page 2 |
        | B.II.b.5(b) | Addition of a new test(s) and limits | Variation Type Page 2 |
        | B.II.b.5(c) | Deletion of a nonsignificant inprocess test | Variation Type Page 2 |
        | B.II.c.1(a) | Tightening of specification limits | Variation Type Page 2 |
        | B.II.c.1(b) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.II.c.1(c) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter) | Variation Type Page 2 |
        | B.II.c.2(a) | Minor changes to an approved test procedure | Variation Type Page 2 |
        | B.II.c.2(b) | Deletion of a test procedure if an alternative test procedure is already authorised | Variation Type Page 2 |
        | B.II.c.3(a).1 | For excipients or reagents not used in the manufacture of a biological / immunological active substance or in a biological / immunological medicinal product | Variation Type Page 2 |
        | B.II.c.4(a) | Minor change in synthesis or recovery of a non-pharmacopoeial excipient or a novel excipient | Variation Type Page 2 |
        | B.II.d.1(a) | Tightening of specification limits | Variation Type Page 2 |
        | B.II.d.1(b) | Tightening of specification limits for medicinal products subject to Official Control Authority Batch Release | Variation Type Page 2 |
        | B.II.d.1(c) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.II.d.1(d) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter such as odour and taste or identification test for a colouring or flavouring material) | Variation Type Page 2 |
        | B.II.d.1(h) | Update of the dossier to comply with the provisions of an updated general monograph of the Ph. Eur for the finished product* | Variation Type Page 2 |
        | B.II.d.1(i) | Ph. Eur. 2.9.40 Uniformity of dosage units is introduced to replace the currently registered method, either Ph. Eur. 2.9.5 (Uniformity of mass). or Ph. Eur. 2.9.6 (Uniformity of content) | Variation Type Page 2 |
        | B.II.d.2(a) | Minor changes to an approved test procedure | Variation Type Page 2 |
        | B.II.d.2(b) | Deletion of a test procedure if an alternative method is already authorised | Variation Type Page 2 |
        | B.II.d.2(e) | Update of the test procedure to comply with the updated general monograph in the Ph.Eur. | Variation Type Page 2 |
        | B.II.d.2(f) | To reflect compliance with the Ph.EUR. and remove reference to the outdated internal test method and test method number* | Variation Type Page 2 |
        | B.II.e.1(a).1 | Solid pharmaceutical forms | Variation Type Page 2 |
        | B.II.e.1(b).3 | Deletion of an immediate packaging container that does not lead to the complete deletion of a strength or pharmaceutical form | Variation Type Page 2 |
        | B.II.e.2(a) | Tightening of specification limits | Variation Type Page 2 |
        | B.II.e.2(b) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.II.e.2(c) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter) | Variation Type Page 2 |
        | B.II.e.3(a) | Minor changes to an approved test procedure | Variation Type Page 2 |
        | B.II.e.3(b) | Other changes to a test procedure (including replacement or addition) | Variation Type Page 2 |
        | B.II.e.3(c) | Deletion of a test procedure if an alternative test procedure is already authorised | Variation Type Page 2 |
        | B.II.e.4(a) | Nonsterile medicinal products | Variation Type Page 2 |
        | B.II.e.5(a).1 | Change within the range of the currently approved pack sizes | Variation Type Page 2 |
        | B.II.e.5(b) | Deletion of a pack size(s) | Variation Type Page 2 |
        | B.II.e.6(a) | Change that affects the product information | Variation Type Page 2 |
        | B.II.e.6(b) | Change that does not affect the product information | Variation Type Page 2 |
        | B.II.e.7(a) | Deletion of a supplier | Variation Type Page 2 |
        | B.II.e.7(b) | Replacement or addition of a supplier | Variation Type Page 2 |
        | B.II.f.1(a).1 | As packaged for sale | Variation Type Page 2 |
        | B.II.f.1(a).2 | After first opening | Variation Type Page 2 |
        | B.II.f.1(a).3 | After dilution or reconstitution | Variation Type Page 2 |
        | B.II.f.1(e) | Change to an approved stability protocol | Variation Type Page 2 |
        | B.II.g.3 | Deletion of an approved change management protocol related to the finish product | Variation Type Page 2 |
        | B.II.g.5(a) | The implementation of the change requires no further supportive data | Variation Type Page 2 |
        | B.III.1(a).1 | New certificate from an already approved manufacturer | Variation Type Page 2 |
        | B.III.1(a).2 | Updated certificate from an already approved manufacturer | Variation Type Page 2 |
        | B.III.1(a).3 | New certificate from a new manufacturer (replacement or addition) | Variation Type Page 2 |
        | B.III.1(a).4 | Deletion of certificates (in case multiple certificates exist per material) | Variation Type Page 2 |
        | B.III.1(b).1 | New certificate for an active substance from a new or an already approved manufacturer | Variation Type Page 2 |
        | B.III.1(b).2 | New certificate for a starting material/reagent/intermediate/or excipient from a new or an already approved manufacturer | Variation Type Page 2 |
        | B.III.1(b).3 | Updated certificate from an already approved manufacturer | Variation Type Page 2 |
        | B.III.1(b).4 | Deletion of certificates (in case multiple certificates exist per material) | Variation Type Page 2 |
        | B.III.2(a).1 | Active substance | Variation Type Page 2 |
        | B.III.2(a).2 | Excipient/active substance starting material | Variation Type Page 2 |
        | B.III.2(b) | Change to comply with an update of the relevant monograph of the Ph. Eur. or national pharmacopoeia of a Member State | Variation Type Page 2 |
        | B.III.2(c) | Change in specifications from a national pharmacopoeia of a Member State to the Ph. Eur. | Variation Type Page 2 |
        | B.IV.1(a).1 | Device with CE marking | Variation Type Page 2 |
        | B.IV.1(b) | Deletion of a device | Variation Type Page 2 |
        | B.IV.2(a) | Tightening of specification limits | Variation Type Page 2 |
        | B.IV.2(b) | Addition of a new specification parameter to the specification with its corresponding test method | Variation Type Page 2 |
        | B.IV.2(f) | Deletion of a nonsignificant specification parameter (e.g. deletion of an obsolete parameter) | Variation Type Page 2 |
        | B.IV.3(a) | Minor change to an approved test procedure | Variation Type Page 2 |
        | B.IV.3(b) | Other changes to a test procedure (including replacement or addition) | Variation Type Page 2 |
        | B.IV.3(c) | Deletion of a test procedure if an alternative test procedure is already authorised | Variation Type Page 2 |
        | B.V.a.1(d) | Inclusion of an updated/amended Plasma Master File when changes do not affect the properties of the finished produc | Variation Type Page 2 |
        | B.V.a.2(c) | Inclusion of an updated/amended Vaccine Antigen Master File, when changes do not affect the properties of the finished product | Variation Type Page 2 |
        | B.V.b.1(a) | The change implements the outcome of the referral | Variation Type Page 2 |
        | C.I.1(a) | The medicinal product is covered by the defined scope of the procedure | Variation Type Page 2 |
        | C.I.9(a) | Change in the QPPV and/or QPPV contact details and/or back-up procedure | Variation Type Page 2 |
        | C.I.9(b) | Change(s) in the safety database and/or major contractual arrangements for the fulfilment of pharmacovigilance obligations, and/or change of the site undergoing pharmacovigilance activities. | Variation Type Page 2 |
        | C.I.9(c) | Other change(s) to the DDPS that does not impact on the operation of the pharmacovigilance system (e.g. change of the major storage/archiving location, administrative changes | Variation Type Page 2 |
        | C.I.9(d) | Change(s) to a DDPS following the assessment of the same DDPS in relation to another medicinal product of the same MAH | Variation Type Page 2 |
        | C.I.11(a) | Implementation of wording agreed by the competent authority | Variation Type Page 2 |
        | C.I.12 | Inclusion or deletion of black symbol and explanatory statements for medicinal products in the list of medicinal prodcuts that are subject to additional monitoring | Variation Type Page 2 |
        | C.II.8 | Change in the frequency and/or date of submission of periodic safety update reports (PSUR) | Variation Type Page 2 |

    @APL-0020E-6
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page

    @APL-0020E-7
    Scenario: User selects 'Continue' option
        Given the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they will be directed to the 'Declaration' page