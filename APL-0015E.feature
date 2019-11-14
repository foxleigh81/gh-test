Feature: User who has enterered a valid code from Data Table II Only changes the variation
    Description:
        Reference: APL-0015E
    
    Background: Given the user has completed the PL-0015D steps

    @APL-0015E
    Scenario Outline: User who has enterered a valid code from Data Table II Only is directed to 'Confirm Change Variation' page 
        Given the user has been directed to the 'Confirm Change Variation' page
        When page 'Confirm Change Variation' loads
        Then they will see a 'Back' link
        And they will see a 'Sign out' link
        And they will see a sub header 'Vary a marketing variation'
        And they will see a page header 'Are you sure you want to change'
        And they will see the 'Variation <Sub Code>' displayed 
        And they will see a radio button option for 'Yes'
        And they will see a radio button option for 'No'
        And they will see a 'Continue' option
        
    Examples: 
        | Sub Code | Description | Page |
        | A(z).3 | Change in legal/distribution category | Describe Changes |
        | B.I.a.1(b) | Introduction of a manufacturer of the active substance supported by an ASMF | Describe Changes |
        | B.I.a.1(c) | The proposed manufacturer uses a substantially different route of synthesis or manufacturing conditions, which may have a potential change important quality characteristics of the active substance, such as qualitative and/or quantitative impurity profile requiring qualification, or physicochemical properties impacting on bioavailability. | Describe Changes |
        | B.I.a.1(d) | New manufacturer of material for which an assessment is required of viral safety and/or TSE risk | Describe Changes |
        | B.I.a.1(e) | The change relates to a biological active substance or a starting material/reagent/intermediate used in the manufacture of a biological/immunological product. | Describe Changes |
        | B.I.a.1(g) | Introduction of a new manufacturer of the active substance that is not supported by an ASMF and requires significant update to the relevant active substance section of the dossier | Describe Changes |
        | B.I.a.1(j) | Changes to quality control testing arrangements for a biological active substance: replacement or addition of a site where batch control/testing including a biological / immunological / immunochemical method takes place | Describe Changes |
        | B.I.a.2(b) | Substantial change to the manufacturing process of the active substance which may have a significant impact on the quality, safety or efficacy of the medicinal product | Describe Changes |
        | B.I.a.2(c) | The change refers to a biological / immunological substance or use of a different chemically derived substance in the manufacture of a biological/immunological substance, which may have a significant impact on the quality, safety and efficacy of the medicinal product and is not related to a protocol | Describe Changes |
        | B.I.a.2(d) | The change relates to a herbal medicinal product and there is a change to any of the following: geographical source, manufacturing route or production. | Describe Changes |
        | B.I.a.3(c) | The change requires assessment of the comparability of a biological/immunological active substance | Describe Changes |
        | B.I.a.4(d) | Widening of the approved inprocess test limits, which may have a significant effect on the overall quality of the active substance | Describe Changes |
        | B.I.a.4(e) | Deletion of an inprocess test which may have a significant effect on the overall quality of the active substance | Describe Changes |
        | B.I.a.5(a) | Replacement of the strain(s) in a seasonal, prepandemic or a pandemic vaccine against human influenza | Describe Changes |
        | B.I.b.1(e) | Deletion of a specification parameter which may have a significant effect on the overall quality of the active substance and/or the finished product | Describe Changes |
        | B.I.b.1(f) | Change outside the approved specifications limits range for the active substance | Describe Changes |
        | B.I.b.1(g) | Widening of the approved specifications limits for starting materials/intermediates, which may have a significant on the overall quality of the active substance and/or the finished product | Describe Changes |
        | B.I.b.2(d) | Substantial change to or replacement of a biological/ immunological/immunochemical test method or a method using a biological reagent for a biological active substance | Describe Changes |
        | B.I.c.1(b) | Qualitative and/or quantitative composition for sterile and nonfrozen biological/immunological active substances | Describe Changes |
        | B.I.d.1(a).2 | Extension of the retest period based on extrapolation of stability data not in accordance with ICH/VICH guidelines | Describe Changes |
        | B.I.d.1(a).3 | Extension of storage period of a biological/immunological active substance not in accordance with an approved stability protocol. | Describe Changes |
        | B.I.d.1(b).2 | Change in storage conditions of biological/immunological active substances, when the stability studies have not been performed in accordance with a currently approved stability protocol | Describe Changes |
        | B.I.e.1(a) | One unit operation in the manufacturing process of the active substance including the resulting inprocess controls and/or test procedures | Describe Changes |
        | B.I.e.1(b) | Test procedures for starting materials/reagents/ intermediates and/or the active substance | Describe Changes |
        | B.I.e.2  | Introduction of a post approval change management protocol related to the active substance | Describe Changes |
        | B.I.e.4(a) | Major changes to an approved change management protocol | Describe Changes |
        | B.II.a.2(c) | Addition of a new kit for a radiopharmaceutical preparation with another fill volume | Describe Changes |
        | B.II.a.3(a).3 | Biological veterinary medicinal products for oral use for which the colouring or flavouring agent is important for the uptake by target animal species | Describe Changes |
        | B.II.a.3(b).2 | Qualitative or quantitative changes in one or more excipients that may have a significant impact on the safety, quality or efficacy of the medicinal product. | Describe Changes |
        | B.II.a.3(b).3 | Change that relates to a biological/immunological product | Describe Changes |
        | B.II.a.3(b).4 | Any new excipient that includes the use of materials of human or animal origin for which assessment is required of viral safety data or TSE risk | Describe Changes |
        | B.II.a.3(b).5 | Change that is supported by a bioequivalence study. | Describe Changes |
        | B.II.a.4(b) | Gastroresistant, modified or prolonged release pharmaceutical forms where the coating is a critical factor for the release mechanism. | Describe Changes |
        | B.II.a.5 | Change in concentration of a single-dose, total use parenteral product, where the amount of active substance per unit dose (i.e. the strength) remains the same. | Describe Changes |
        | B.II.b.1(c) | Site where any manufacturing operation(s) take place, except batch release, batch control, and secondary packaging, for biological/ immunological medicinal products or for pharmaceutical forms manufactured by complex manufacturing processes | Describe Changes |
        | B.II.b.1(d) | Site which requires an initial or product specific inspection | Describe Changes |
        | B.II.b.2(b) | Replacement or addition of a site where batch control/testing takes place for a biological/immunological product and any of the test methods performed at the site is a biological/immunological method | Describe Changes |
        | B.II.b.3(b) | Substantial changes to a manufacturing process that may have a significant impact on the quality, safety and efficacy of the medicinal product | Describe Changes |
        | B.II.b.3(c) | The product is a biological/immunological medicinal product and the change requires an assessment of comparability. | Describe Changes |
        | B.II.b.3(d) | Introduction of a nonstandard terminal sterilisation method | Describe Changes |
        | B.II.b.3(e) | Introduction or increase in the overage that is used for the active substance | Describe Changes |
        | B.II.b.4(c) | The change requires assessment of the comparability of a biological/immunological medicinal product or the change in batch size requires a new bioequivalence study | Describe Changes |
        | B.II.b.4(d) | The change relates to all other pharmaceutical forms manufactured by complex manufacturing processes | Describe Changes |
        | B.II.b.5(d) | Deletion of an inprocess test which may have a significant effect on the overall quality of the finished product | Describe Changes |
        | B.II.b.5(e) | Widening of the approved IPC limits, which may have a significant effect on overall quality of the finished product | Describe Changes |
        | B.II.c.1(d) | Change outside the approved specifications limits range | Describe Changes |
        | B.II.c.1(e) | Deletion of a specification parameter which may have a significant effect on the overall quality of the finished product | Describe Changes |
        | B.II.c.2(c) | Substantial change to or replacement of a biological/ immunological/ immunochemical test method or a method using a biological reagent | Describe Changes |
        | B.II.c.3(b) | Change or introduction of a TSE risk material or replacement of a TSE risk material from a different TSE risk material, not covered by a TSE certificate of suitability | Describe Changes |
        | B.II.c.4(b) | The specifications are affected or there is a change in physicochemical properties of the excipient which may affect the quality of the finished product. | Describe Changes |
        | B.II.c.4(c) | The excipient is a biological/immunological substance | Describe Changes |
        | B.II.d.1(e) | Change outside the approved specifications limits range | Describe Changes |
        | B.II.d.1(f) | Deletion of a specification parameter which may have a significant effect on the overall quality of the finished product | Describe Changes |
        | B.II.d.2(c) | Substantial change to, or replacement of, a biological/ immunological/ immunochemical test method or a method using a biological reagent or replacement of a biological reference preparation not covered by an approved protocol | Describe Changes |
        | B.II.d.3 | Variations related to the introduction of real-time release or parametric release in the manufacture of the finished product | Describe Changes |
        | B.II.e.1(a).3 | Sterile medicinal products and biological/immunological medicinal products | Describe Changes |
        | B.II.e.1(a).4 | The change relates to a less protective pack where there are associated changes in storage conditions and/or reduction in shelf life | Describe Changes |
        | B.II.e.1(b).2 | Sterile medicinal products and biological/immunological medicinal products | Describe Changes |
        | B.II.e.4(b) | The change in shape or dimensions concerns a fundamental part of the packaging material, which ay have a significant impact on the delivery, use, safety or stability of the finished product | Describe Changes |
        | B.II.e.5(c) | Change in the fill weight/fill volume of sterile multidose (or single-dose, partial use) parenteral medicinal products, and biological/immunological multidose parenteral medicinal products. | Describe Changes |
        | B.II.e.7(c) | Any change to suppliers of spacer devices for metered dose inhalers | Describe Changes |
        | B.II.f.1(b).4 | Extension of the shelf-life based on extrapolation of stability data not in accordance with ICH/VICH guidelines | Describe Changes |
        | B.II.f.1(c) | Change in storage conditions for biological medicinal products, when the stability studies have not been performed in accordance with an approved stability protocol | Describe Changes |
        | B.II.g.1(a) | One or more unit operations in the manufacturing process of the finished product including the resulting inprocess controls and/or test procedures | Describe Changes |
        | B.II.g.1(b) | Test procedures for excipients / intermediates and/or the finished product | Describe Changes |
        | B.II.g.2 | Introduction of a post approval change management protocol related to the finished product | Describe Changes |
        | B.II.g.4(a) | Major changes to an approved change management protocol | Describe Changes |
        | B.II.h.1(a) | Studies related to manufacturing steps investigated for the first time for one or more adventitious agents | Describe Changes |
        | B.II.h.1(b).1 | with modification of risk assessment | Describe Changes |
        | B.IV.1(a).3 | Spacer device for metered dose inhalers or other device which may have a significant impact on the delivery of the active substance in the product(e.g. nebuliser) | Describe Changes |
        | B.IV.1(c) | Addition or replacement of a device which is an integrated part of the primary packaging | Describe Changes |
        | B.IV.2(c) | Widening of the approved specifications limits, which has a significant effect on the overall quality of the device | Describe Changes |
        | B.IV.2(d) | Deletion of a specification parameter that has a significant effect on the overall quality of the device | Describe Changes |
        | B.V.a.1(a) | First time inclusion of a new Plasma Master File affecting the properties of the finished product | Describe Changes |
        | B.V.a.2(a) | First time inclusion of a new Vaccine Antigen Master File | Describe Changes |
        | B.V.b.1(b) | The harmonisation of the quality dossier was not part of the referral and the update is intended to harmonise it | Describe Changes |
        | B(z).1 | Alignment of Part 2 in accordance with the current data regarding methods of production and quality control | Describe Changes |
        | C.I.1(c) | The medicinal product is not covered by the defined scope of the procedure but the change(s) implements the outcome of the procedure with new additional data submitted by the MAH | Describe Changes |
        | C.I.2(b) | Implementation of change(s) which require to be further substantiated by new additional data to be submitted by the MAH | Describe Changes |
        | C.I.4 | Change(s) in the SPC, Labelling or Package Leaflet due to new quality, preclinical, clinical or pharmacovigilance data | Describe Changes |
        | C.I.6(a) | Addition of a new therapeutic indication or modification of an approved one | Describe Changes |
        | C.I.7(a) | Deletion of a pharmaceutical form | Describe Changes |
        | C.I.11(b) | Implementation of change(s) which require to be further substantiated by new additional data to be submitted by the MAH where significant assessment by the competent authority is required* | Describe Changes |
        | C.I.13 | Other variations not specifically covered elsewhere in this Annex, which involve the submission of studies to the competent authority | Describe Changes |
        | C.II.1 | Variations concerning a change to or addition of a non-food producing target species. | Describe Changes |
        | C.II.2(a) | Deletion as a result of a safety issue | Describe Changes |
        | C.II.3 | Changes to the withdrawal period for a veterinary medicinal product | Describe Changes |
        | C.II.4 | Variations concerning the replacement or addition of a serotype, strain, antigen or combination of serotypes, strains or antigens for a veterinary vaccine against avian influenza, foot-and-mouth disease or bluetongue. | Describe Changes |
        | C.II.5 | Variations concerning the replacement of a strain for a veterinary vaccine against equine influenza. | Describe Changes |
        | C.II.7(a) | Which has not been assessed by the relevant national competent authority/EMA for another product of the same MAH | Describe Changes |

    @APL-0015E-1
    Scenario: User selects 'Yes' option
        Given the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'Yes'
        When they select 'Continue'
        Then they will be directed to the 'Enter Variation Code' page

    @APL-0015E-2
    Scenario: User selects 'No' option
        Given the user has been directed to the 'Confirm Change Variation' page
        And the user has selected 'No'
        When they select 'Continue'
        Then they will be directed to the 'Check Your Answers' page

    @APL-0015E-3
    Scenario: User does not select an option
        Given the user has been directed to the 'Confirm Change Variation' page
        And they have not selected any 'Radio Button'
        When they select 'Continue'
        Then they will see an error message containing 'Select an option'
        And they will not be able to continue