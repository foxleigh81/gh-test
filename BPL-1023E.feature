Feature: User who has entered a valid code from Data Table IA + IB, and has selected IB variation type, changes the variation
    Description:
        Reference: BPL-1023E

    Background: Given the user has completed the PL-1023D steps

    @BPL-1023E
    Scenario Outline: User who has entered a valid code from Data Table IA + IB, and has selected IB variation type, is directed to 'Confirm Change Variation' page 
        Given the user has been directed to the 'Confirm Change Variation' page
        When page 'Confirm Change Variation' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing variation'
        And a page header 'Are you sure you want to change variation: variation: variation:'
        And they will see the 'Variation <Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
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

    @BPL-1023E-1
    Scenario: User selects 'Yes' option
        Given the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @BPL-1023E-2
    Scenario: User selects 'No' option
        Given the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they will be directed to the 'Check Your Answers' page

    @BPL-1023E-3
    Scenario: User does not select an option
        Given the user has been directed to the 'Confirm Change Variation' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue