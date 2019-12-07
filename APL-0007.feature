Feature: User enters a variation code
    Description:
        Epic: Procedure A: Single Change, Single Product
        Reference: APL-0007
        Jira: GS-6

    Background: Given the user has completed the GS-4 steps

    @APL-0007
    Scenario: User directed to Enter Variation Code
        Given the user has been directed to the 'Enter Variation Code' page
        When page 'Enter Variation Code' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation'
        And a page header 'Choose a variation'
        And a sub header 'Enter variation code or name'
        And a sub header 'Select a common variation'
        And the user can see a text input box
        And they will see 5 radio button option(s)
        And they will see a 'Continue' option

    @APL-0007-1
    Scenario Outline: User enters a valid code from Data Table IA Only
        Given the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table IA Only'
        When they select 'Continue'
        Then they will be directed to the 'Implementation Date' page
        
    Examples: 
        | Sub Code | Description | Page |
        | C.II.6(a) | Administrative information concerning the holder's representative | Implementation Date |

    @APL-0007-2
    Scenario Outline: User enters a valid code from Data Table IB Only
        Given the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table IB Only'
        When they select 'Continue'
        Then they will be directed to the 'Describe Changes' page
        
    Examples: 
        | Sub Code | Description | Page |
        | A.2(b) | Change in the (invented) name of the medicinal product | Describe Changes |
        | B.I.a.1(h) | Addition of an alternative sterilisation site for the active substance using a Ph.Eur. method | Describe Changes |
        | B.I.a.1(k) | New storage site of Master Cell Bank and/or Working Cell Banks | Describe Changes |
        | B.I.a.2(e) | Minor change to the restricted part of an Active Substance Master File | Describe Changes |
        | B.I.a.3(d) | More than 10-fold increase compared to the originally approved batch size | Describe Changes |
        | B.I.a.3(e) | The scale for a biological/immunological active substance is increased / decreased without process change (e.g. duplication of line) | Describe Changes |
        | B.I.a.4(f) | Addition or replacement of an inprocess test as a result of a safety or quality issue | Describe Changes |
        | B.I.b.1(h) | Addition or replacement (excluding biological or immunological substance) of a specification parameter with its corresponding test method as a result of a safety or quality issue | Describe Changes |
        | B.I.b.1(i) | Where there is no monograph in the European Pharmacopoeia or the national pharmacopoeia of a Member State for the active substance, a change in specification from in-house to a non-official Pharmacopoeia or a Pharmacopoeia of a third country | Describe Changes |
        | B.I.b.2(e) | Other changes to a test procedure (including replacement or addition) for the active substance or a starting material/intermediate | Describe Changes |
        | B.I.c.1(c) | Liquid active substances (non sterile) | Describe Changes |
        | B.I.c.2(d) | Addition or replacement of a specification parameter as a result of a safety or quality issue | Describe Changes |
        | B.I.d.1(a).4 | Extension or introduction of a retest period/storage period supported by real time data | Describe Changes |
        | B.I.d.1(b).3 | Change in storage conditions of the active substance | Describe Changes |
        | B.I.e.4(b) | Minor changes to an approved change management protocol that do not change the strategy defined in the protocol | Describe Changes |
        | B.I.e.5(b) | The implementation of the change requires further supportive data | Describe Changes |
        | B.I.e.5(c) | The implementation of a change for a biological/immunological medicinal product | Describe Changes |
        | B.II.a.1(b) | Changes in scoring/break lines intended to divide into equal doses | Describe Changes |
        | B.II.a.2(b) | Gastroresistant, modified or prolonged release pharmaceutical forms and scored tablets intended to be divided into equal doses | Describe Changes |
        | B.II.a.3(b).6 | Replacement of a single excipient with a comparable excipient with the same functional characteristics and at a similar level | Describe Changes |
        | B.II.a.6 | Deletion of the solvent / diluent container from the pack | Describe Changes |
        | B.II.b.1(e) | Site where any manufacturing operation(s) take place, except batch release, batch control, primary and secondary packaging, for nonsterile medicinal products. | Describe Changes |
        | B.II.b.1(f) | Site where any manufacturing operation(s) take place, except batch release, batch control, and secondary packaging, for sterile medicinal products (including those that are aseptically manufactured) excluding biological/ immunological medicinal products | Describe Changes |
        | B.II.b.3(f) | Minor change in the manufacturing process of an aqueous oral suspension | Describe Changes |
        | B.II.b.4(e) | More than 10-fold increase compared to the originally approved batch size for immediate release (oral) pharmaceutical forms | Describe Changes |
        | B.II.b.4(f) | The scale for a biological/immunological medicinal product is increased / decreased without process change (e.g. duplication of line) | Describe Changes |
        | B.II.b.5(f) | Addition or replacement of an inprocess test as a result of a safety or quality issue | Describe Changes |
        | B.II.c.1(f) | Addition or replacement (excluding biological or immunological product) of a specification parameter with its corresponding test method, as a result of a safety or quality issue | Describe Changes |
        | B.II.c.1(g) | Where there is no monograph in the European Pharmacopoeia or the national pharmacopoeia of a Member State for the excipient, a change in specification from in-house to a non-official Pharmacopoeia or a Pharmacopoeia of a third country | Describe Changes |
        | B.II.c.2(d) | Other changes to a test procedure (including replacement or addition) | Describe Changes |
        | B.II.c.3(a).2 | For excipients or reagents used in the manufacture of a biological / immunological active substance or in a biological / immunological medicinal product | Describe Changes |
        | B.II.d.1(g) | Addition or replacement (excluding biological or immunological product) of a specification parameter with its corresponding test method as a result of a safety or quality issue | Describe Changes |
        | B.II.d.2(d) | Other changes to a test procedure (including replacement or addition) | Describe Changes |
        | B.II.e.1(a).2 | Semisolid and nonsterile liquid pharmaceutical forms | Describe Changes |
        | B.II.e.1(b).1 | Solid, semisolid and nonsterile liquid pharmaceutical forms | Describe Changes |
        | B.II.e.2(d) | Addition or replacement of a specification parameter as a result of a safety or quality issue | Describe Changes |
        | B.II.e.4(c) | Sterile medicinal products | Describe Changes |
        | B.II.e.5(a).2 | Change outside the range of the currently approved pack sizes | Describe Changes |
        | B.II.e.5(d) | Change in the fill weight/fill volume of nonparenteral multi-dose (or single-dose, partial use) products | Describe Changes |
        | B.II.e.6(b) | Change that does not affect the product information | Describe Changes |
        | B.II.f.1(b).1 | As packaged for sale (supported by real time data) | Describe Changes |
        | B.II.f.1(b).2 | After first opening (supported by real time data) | Describe Changes |
        | B.II.f.1(b).3 | After dilution or reconstitution (supported by real time data) | Describe Changes |
        | B.II.f.1(b).5 | Extension of the shelf-life of a biological/immunological medicinal product in accordance with an approved stability protocol | Describe Changes |
        | B.II.f.1(d) | Change in storage conditions of the finished product or the diluted/reconstituted product | Describe Changes |
        | B.II.g.4(b) | Minor changes to an approved change management protocol that do not change the strategy defined in the protocol | Describe Changes |
        | B.II.g.5(b) | The implementation of the change requires further supportive data | Describe Changes |
        | B.II.g.5(c) | Implementation of a change for a biological/immunological medicinal product | Describe Changes |
        | B.II.h.1(b).2 | without modification of risk assessment | Describe Changes |
        | B.III.1(a).5 | New certificate for a non-sterile active substance that is to be used in a sterile medicinal product, where water is used in the last steps of the synthesis and the material is not claimed to be endotoxin free | Describe Changes |
        | B.IV.1(a).2 | Device without CE marking (for veterinary products only) | Describe Changes |
        | B.IV.2(e) | Addition of a specification parameter as a result of a safety or quality issue | Describe Changes |
        | B.V.a.1(b) | First time inclusion of a new Plasma Master File not affecting the properties of the finished product | Describe Changes |
        | B.V.a.1(c) | Inclusion of an updated/amended Plasma Master File when changes affect the properties of the finished product | Describe Changes |
        | B.V.a.2(b) | Inclusion of an updated/amended Vaccine Antigen Master File, when changes affect the properties of the finished product | Describe Changes |
        | C.I.1(b) | The medicinal product is not covered by the defined scope of the procedure but the change(s) implements the outcome of the procedure and no new additional data is required to be submitted by the MAH | Describe Changes |
        | C.I.2(a) | Implementation of change(s) for which no new additional data are submitted by the MAH | Describe Changes |
        | C.I.6(b) | Deletion of a therapeutic indication | Describe Changes |
        | C.I.7(a) | Deletion of a pharmaceutical form | Describe Changes |
        | C.I.7(b) | Deletion of a strength | Describe Changes |
        | C.I(z).2 | Addition or change to safety warnings | Describe Changes |
        | C.I(z).3 | Approval of mock-ups | Describe Changes |
        | C.I(z).4 | Changes to SPC and/or product literature for MAPIs | Describe Changes |
        | C.I(z).5 | Joint-Labelling Variation | Describe Changes |
        | C.I(z).6 | Normal corrections or simple text layout changes to SPC and/or product literature | Describe Changes |
        | C.I(z).7 | Resubmission of previously refused Type II variations | Describe Changes |
        | C.I(z).8 | Simple changes to dosage instructions | Describe Changes |
        | C.I(z).9 | Submission following formal advice from the VMD | Describe Changes |
        | C.II.2(b) | Deletion not resulting from a safety issue | Describe Changes |
        | C.II.6(b) | Other changes | Describe Changes |
        | C.II.6(b) Mock-ups | Description Needed | Describe Changes |
        | C.II.7(b) | Which has been assessed by the relevant national competent authority/EMA for another product of the same MAH(*) | Describe Changes |

    @APL-0007-3
    Scenario Outline: User enters a valid code from Data Table II Only
        Given the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table II Only'
        When they select 'Continue'
        Then they will be directed to the 'Describe Changes' page
        
    Examples: 
        | Sub Code | Description | Page |
        | A(z).3 | Change in legal/distribution category | Describe changes |
        | B.I.a.1(b) | Introduction of a manufacturer of the active substance supported by an ASMF | Describe changes |
        | B.I.a.1(c) | The proposed manufacturer uses a substantially different route of synthesis or manufacturing conditions, which may have a potential change important quality characteristics of the active substance, such as qualitative and/or quantitative impurity profile requiring qualification, or physicochemical properties impacting on bioavailability. | Describe changes |
        | B.I.a.1(d) | New manufacturer of material for which an assessment is required of viral safety and/or TSE risk | Describe changes |
        | B.I.a.1(e) | The change relates to a biological active substance or a starting material/reagent/intermediate used in the manufacture of a biological/immunological product. | Describe changes |
        | B.I.a.1(g) | Introduction of a new manufacturer of the active substance that is not supported by an ASMF and requires significant update to the relevant active substance section of the dossier | Describe changes |
        | B.I.a.1(j) | Changes to quality control testing arrangements for a biological active substance: replacement or addition of a site where batch control/testing including a biological / immunological / immunochemical method takes place | Describe changes |
        | B.I.a.2(b) | Substantial change to the manufacturing process of the active substance which may have a significant impact on the quality, safety or efficacy of the medicinal product | Describe changes |
        | B.I.a.2(c) | The change refers to a biological / immunological substance or use of a different chemically derived substance in the manufacture of a biological/immunological substance, which may have a significant impact on the quality, safety and efficacy of the medicinal product and is not related to a protocol | Describe changes |
        | B.I.a.2(d) | The change relates to a herbal medicinal product and there is a change to any of the following: geographical source, manufacturing route or production. | Describe changes |
        | B.I.a.3(c) | The change requires assessment of the comparability of a biological/immunological active substance | Describe changes |
        | B.I.a.4(d) | Widening of the approved inprocess test limits, which may have a significant effect on the overall quality of the active substance | Describe changes |
        | B.I.a.4(e) | Deletion of an inprocess test which may have a significant effect on the overall quality of the active substance | Describe changes |
        | B.I.a.5(a) | Replacement of the strain(s) in a seasonal, prepandemic or a pandemic vaccine against human influenza | Describe changes |
        | B.I.b.1(e) | Deletion of a specification parameter which may have a significant effect on the overall quality of the active substance and/or the finished product | Describe changes |
        | B.I.b.1(f) | Change outside the approved specifications limits range for the active substance | Describe changes |
        | B.I.b.1(g) | Widening of the approved specifications limits for starting materials/intermediates, which may have a significant on the overall quality of the active substance and/or the finished product | Describe changes |
        | B.I.b.2(d) | Substantial change to or replacement of a biological/ immunological/immunochemical test method or a method using a biological reagent for a biological active substance | Describe changes |
        | B.I.c.1(b) | Qualitative and/or quantitative composition for sterile and nonfrozen biological/immunological active substances | Describe changes |
        | B.I.d.1(a).2 | Extension of the retest period based on extrapolation of stability data not in accordance with ICH/VICH guidelines | Describe changes |
        | B.I.d.1(a).3 | Extension of storage period of a biological/immunological active substance not in accordance with an approved stability protocol. | Describe changes |
        | B.I.d.1(b).2 | Change in storage conditions of biological/immunological active substances, when the stability studies have not been performed in accordance with a currently approved stability protocol | Describe changes |
        | B.I.e.1(a) | One unit operation in the manufacturing process of the active substance including the resulting inprocess controls and/or test procedures | Describe changes |
        | B.I.e.1(b) | Test procedures for starting materials/reagents/ intermediates and/or the active substance | Describe changes |
        | B.I.e.2 | Introduction of a post approval change management protocol related to the active substance | Describe changes |
        | B.I.e.4(a) | Major changes to an approved change management protocol | Describe changes |
        | B.II.a.2(c) | Addition of a new kit for a radiopharmaceutical preparation with another fill volume | Describe changes |
        | B.II.a.3(a).3 | Biological veterinary medicinal products for oral use for which the colouring or flavouring agent is important for the uptake by target animal species | Describe changes |
        | B.II.a.3(b).2 | Qualitative or quantitative changes in one or more excipients that may have a significant impact on the safety, quality or efficacy of the medicinal product. | Describe changes |
        | B.II.a.3(b).3 | Change that relates to a biological/immunological product | Describe changes |
        | B.II.a.3(b).4 | Any new excipient that includes the use of materials of human or animal origin for which assessment is required of viral safety data or TSE risk | Describe changes |
        | B.II.a.3(b).5 | Change that is supported by a bioequivalence study. | Describe changes |
        | B.II.a.4(b) | Gastroresistant, modified or prolonged release pharmaceutical forms where the coating is a critical factor for the release mechanism. | Describe changes |
        | B.II.a.5 | Change in concentration of a single-dose, total use parenteral product, where the amount of active substance per unit dose (i.e. the strength) remains the same. | Describe changes |
        | B.II.b.1(c) | Site where any manufacturing operation(s) take place, except batch release, batch control, and secondary packaging, for biological/ immunological medicinal products or for pharmaceutical forms manufactured by complex manufacturing processes | Describe changes |
        | B.II.b.1(d) | Site which requires an initial or product specific inspection | Describe changes |
        | B.II.b.2(b) | Replacement or addition of a site where batch control/testing takes place for a biological/immunological product and any of the test methods performed at the site is a biological/immunological method | Describe changes |
        | B.II.b.2(c).3 | Including batch control/testing for a biological/immunological product and any of the test methods performed at that site is a biological/immunological/immunochemical method. | Describe changes |
        | B.II.b.3(b) | Substantial changes to a manufacturing process that may have a significant impact on the quality, safety and efficacy of the medicinal product | Describe changes |
        | B.II.b.3(c) | The product is a biological/immunological medicinal product and the change requires an assessment of comparability. | Describe changes |
        | B.II.b.3(d) | Introduction of a nonstandard terminal sterilisation method | Describe changes |
        | B.II.b.3(e) | Introduction or increase in the overage that is used for the active substance | Describe changes |
        | B.II.b.4(c) | The change requires assessment of the comparability of a biological/immunological medicinal product or the change in batch size requires a new bioequivalence study | Describe changes |
        | B.II.b.4(d) | The change relates to all other pharmaceutical forms manufactured by complex manufacturing processes | Describe changes |
        | B.II.b.5(d) | Deletion of an inprocess test which may have a significant effect on the overall quality of the finished product | Describe changes |
        | B.II.b.5(e) | Widening of the approved IPC limits, which may have a significant effect on overall quality of the finished product | Describe changes |
        | B.II.c.1(d) | Change outside the approved specifications limits range | Describe changes |
        | B.II.c.1(e) | Deletion of a specification parameter which may have a significant effect on the overall quality of the finished product | Describe changes |
        | B.II.c.2(c) | Substantial change to or replacement of a biological/ immunological/ immunochemical test method or a method using a biological reagent | Describe changes |
        | B.II.c.3(b) | Change or introduction of a TSE risk material or replacement of a TSE risk material from a different TSE risk material, not covered by a TSE certificate of suitability | Describe changes |
        | B.II.c.4(b) | The specifications are affected or there is a change in physicochemical properties of the excipient which may affect the quality of the finished product. | Describe changes |
        | B.II.c.4(c) | The excipient is a biological/immunological substance | Describe changes |
        | B.II.d.1(e) | Change outside the approved specifications limits range | Describe changes |
        | B.II.d.1(f) | Deletion of a specification parameter which may have a significant effect on the overall quality of the finished product | Describe changes |
        | B.II.d.2(c) | Substantial change to, or replacement of, a biological/ immunological/ immunochemical test method or a method using a biological reagent or replacement of a biological reference preparation not covered by an approved protocol | Describe changes |
        | B.II.d.3 | Variations related to the introduction of real-time release or parametric release in the manufacture of the finished product | Describe changes |
        | B.II.e.1(a).3 | Sterile medicinal products and biological/immunological medicinal products | Describe changes |
        | B.II.e.1(a).4 | The change relates to a less protective pack where there are associated changes in storage conditions and/or reduction in shelf life | Describe changes |
        | B.II.e.1(b).2 | Sterile medicinal products and biological/immunological medicinal products | Describe changes |
        | B.II.e.4(b) | The change in shape or dimensions concerns a fundamental part of the packaging material, which ay have a significant impact on the delivery, use, safety or stability of the finished product | Describe changes |
        | B.II.e.5(c) | Change in the fill weight/fill volume of sterile multidose (or single-dose, partial use) parenteral medicinal products, and biological/immunological multidose parenteral medicinal products. | Describe changes |
        | B.II.e.7(c) | Any change to suppliers of spacer devices for metered dose inhalers | Describe changes |
        | B.II.f.1(b).4 | Extension of the shelf-life based on extrapolation of stability data not in accordance with ICH/VICH guidelines | Describe changes |
        | B.II.f.1(c) | Change in storage conditions for biological medicinal products, when the stability studies have not been performed in accordance with an approved stability protocol | Describe changes |
        | B.II.g.1(a) | One or more unit operations in the manufacturing process of the finished product including the resulting inprocess controls and/or test procedures | Describe changes |
        | B.II.g.1(b) | Test procedures for excipients / intermediates and/or the finished product | Describe changes |
        | B.II.g.2 | Introduction of a post approval change management protocol related to the finished product | Describe changes |
        | B.II.g.4(a) | Major changes to an approved change management protocol | Describe changes |
        | B.II.h.1(a) | Studies related to manufacturing steps investigated for the first time for one or more adventitious agents | Describe changes |
        | B.II.h.1(b).1 | with modification of risk assessment | Describe changes |
        | B.III.1(b).5 | New/updated certificate from an already-approved/new manufacturer using materials of human or animal origin for which an assessment of the risk with respect to potential contamination with adventitious agents is required | Describe changes |
        | B.IV.1(a).3 | Spacer device for metered dose inhalers or other device which may have a significant impact on the delivery of the active substance in the product(e.g. nebuliser) | Describe changes |
        | B.IV.1(c) | Addition or replacement of a device which is an integrated part of the primary packaging | Describe changes |
        | B.IV.2(c) | Widening of the approved specifications limits, which has a significant effect on the overall quality of the device | Describe changes |
        | B.IV.2(d) | Deletion of a specification parameter that has a significant effect on the overall quality of the device | Describe changes |
        | B.V.a.1(a) | First time inclusion of a new Plasma Master File affecting the properties of the finished product | Describe changes |
        | B.V.a.2(a) | First time inclusion of a new Vaccine Antigen Master File | Describe changes |
        | B.V.b.1(b) | The harmonisation of the quality dossier was not part of the referral and the update is intended to harmonise it | Describe changes |
        | B(z).1 | Alignment of Part 2 in accordance with the current data regarding methods of production and quality control | Describe changes |
        | C.I.1(c) | The medicinal product is not covered by the defined scope of the procedure but the change(s) implements the outcome of the procedure with new additional data submitted by the MAH | Describe changes |
        | C.I.2(b) | Implementation of change(s) which require to be further substantiated by new additional data to be submitted by the MAH | Describe changes |
        | C.I.4 | Change(s) in the SPC, Labelling or Package Leaflet due to new quality, preclinical, clinical or pharmacovigilance data | Describe changes |
        | C.I.6(a) | Addition of a new therapeutic indication or modification of an approved one | Describe changes |
        | C.I.11(b) | Implementation of change(s) which require to be further substantiated by new additional data to be submitted by the MAH where significant assessment by the competent authority is required* | Describe changes |
        | C.I.13 | Other variations not specifically covered elsewhere in this Annex, which involve the submission of studies to the competent authority | Describe changes |
        | C.II.1 | Variations concerning a change to or addition of a non-food producing target species. | Describe changes |
        | C.II.2(a) | Deletion as a result of a safety issue | Describe changes |
        | C.II.3 | Changes to the withdrawal period for a veterinary medicinal product | Describe changes |
        | C.II.4 | Variations concerning the replacement or addition of a serotype, strain, antigen or combination of serotypes, strains or antigens for a veterinary vaccine against avian influenza, foot-and-mouth disease or bluetongue. | Describe changes |
        | C.II.5 | Variations concerning the replacement of a strain for a veterinary vaccine against equine influenza. | Describe changes |
        | C.II.7(a) | Which has not been assessed by the relevant national competent authority/EMA for another product of the same MAH | Describe changes |

    @APL-0007-4
    Scenario Outline: User enters a valid code from Data Table IA + IB
        Given the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table IA + IB'
        When they select 'Continue'
        Then they will be directed to the 'Variation Type Page 2' page
        
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

    @APL-0007-5
    Scenario Outline: User enters a valid code from Data Table Z Only
        Given the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table Z Only'
        When they select 'Continue'
        Then they will be directed to the 'Variation Type Page 1' page
        
    Examples: 
        | Sub Code | Description | Page |
        | A(z) | Other Variation | Variation Type Page 1 |
        | B.I.a.1(z) | Other variation | Variation Type Page 1 |
        | B.I.a.2(z) | Other variation | Variation Type Page 1 |
        | B.I.a.3(z) | Other variation | Variation Type Page 1 |
        | B.I.a.4(z) | Other variation | Variation Type Page 1 |
        | B.I.a.5(z) | Other variation | Variation Type Page 1 |
        | B.I.a(z) | Change in the manufacture of the active substance: Other variation | Variation Type Page 1 |
        | B.I.b.1(z) | Other variation | Variation Type Page 1 |
        | B.I.b.2(z) | Other variation | Variation Type Page 1 |
        | B.I.b(z) | Change in control of the active substance | Variation Type Page 1 |
        | B.I.c.1(z) | Other variation | Variation Type Page 1 |
        | B.I.c.2(z) | Other variation | Variation Type Page 1 |
        | B.I.c.3(z) | Other variation | Variation Type Page 1 |
        | B.I.c(z) | Change in container closure system of the active substance: Other variation | Variation Type Page 1 |
        | B.I.d.1(z) | Other variation | Variation Type Page 1 |
        | B.I.d(z) | Stability: Other variation | Variation Type Page 1 |
        | B.I.e.1(z) | Other variation | Variation Type Page 1 |
        | B.I.e.2(z) | Other variation | Variation Type Page 1 |
        | B.I.e.3(z) | Other variation | Variation Type Page 1 |
        | B.I.e.4(z) | Other variation | Variation Type Page 1 |
        | B.I.e.5(z) | Other variation | Variation Type Page 1 |
        | B.I.e(z) | Design space and post approval change management protocols. Other Variation | Variation Type Page 1 |
        | B.I(z) | Active substance: Other variation | Variation Type Page 1 |
        | B.II.a.1(z) | Other variation | Variation Type Page 1 |
        | B.II.a.2(z) | Other variation | Variation Type Page 1 |
        | B.II.a.3(z) | Other variation | Variation Type Page 1 |
        | B.II.a.4(z) | Other variation | Variation Type Page 1 |
        | B.II.a.5(z) | Other variation | Variation Type Page 1 |
        | B.II.a.6(z) | Other variation | Variation Type Page 1 |
        | B.II.a(z) | Change in description and composition of the final product: Other variation | Variation Type Page 1 |
        | B.II.b.1(z) | Other variation | Variation Type Page 1 |
        | B.II.b.2(z) | Other variation | Variation Type Page 1 |
        | B.II.b.3(z) | Other variation | Variation Type Page 1 |
        | B.II.b.4(z) | Other variation | Variation Type Page 1 |
        | B.II.b.5(z) | Other variation | Variation Type Page 1 |
        | B.II.b(z) | Change in the manufacture of the finished product | Variation Type Page 1 |
        | B.II.c.1(z) | Other variation | Variation Type Page 1 |
        | B.II.c.2(z) | Other variation | Variation Type Page 1 |
        | B.II.c.3(z) | Other variation | Variation Type Page 1 |
        | B.II.c.4(z) | Other variation | Variation Type Page 1 |
        | B.II.c(z) | Change in control of excipients in the finished product | Variation Type Page 1 |
        | B.II.d.1(z) | Other variation | Variation Type Page 1 |
        | B.II.d.2(z) | Other variation | Variation Type Page 1 |
        | B.II.d.3(z) | Other variation | Variation Type Page 1 |
        | B.II.d(z) | Change in control of the finished product: Other variation | Variation Type Page 1 |
        | B.II.e.1(z) | Other variation | Variation Type Page 1 |
        | B.II.e.2(z) | Other variation | Variation Type Page 1 |
        | B.II.e.3(z) | Other variation | Variation Type Page 1 |
        | B.II.e.4(z) | Other variation | Variation Type Page 1 |
        | B.II.e.5(z) | Other variation | Variation Type Page 1 |
        | B.II.e.6(z) | Other variation | Variation Type Page 1 |
        | B.II.e.7(z) | Other variation | Variation Type Page 1 |
        | B.II.e(z) | Change in the container closure system of the finished product: Other variation | Variation Type Page 1 |
        | B.II.f.1(z) | Other variation | Variation Type Page 1 |
        | B.II.f(z) | Stability: Other variation | Variation Type Page 1 |
        | B.II.g.1(z) | Other variation | Variation Type Page 1 |
        | B.II.g.2(z) | Other variation | Variation Type Page 1 |
        | B.II.g.3(z) | Other variation | Variation Type Page 1 |
        | B.II.g.4(z) | Other variation | Variation Type Page 1 |
        | B.II.g.5(z) | Other variation | Variation Type Page 1 |
        | B.II.g(z) | Design space and post approval change management protocols: Other variation | Variation Type Page 1 |
        | B.II.h.1(z) | Other variation | Variation Type Page 1 |
        | B.II.h(z) | Adventitious agents safety: Other variation | Variation Type Page 1 |
        | B.II(z) | Finished product: Other variation | Variation Type Page 1 |
        | B.III.1(z) | Other Variation | Variation Type Page 1 |
        | B.III.2(z) | Other Variation | Variation Type Page 1 |
        | B.III(z) | CEP/TSE/Monographs: Other variation | Variation Type Page 1 |
        | B.IV.1(z) | Other variation | Variation Type Page 1 |
        | B.IV.2(z) | Other variation | Variation Type Page 1 |
        | B.IV.3(z) | Other variation | Variation Type Page 1 |
        | B.IV(z) | Change in medical devices: Other Variation | Variation Type Page 1 |
        | B.V.a.1(z) | Other variation | Variation Type Page 1 |
        | B.V.a.2(z) | Other variation | Variation Type Page 1 |
        | B.V.b.1(z) | Other variation | Variation Type Page 1 |
        | B(z) | Other variation | Variation Type Page 1 |
        | C.I.1(z) | Other variation | Variation Type Page 1 |
        | C.I.2(z) | Other variation | Variation Type Page 1 |
        | C.I.4(z) | Other variation | Variation Type Page 1 |
        | C.I.6(z) | Other variation | Variation Type Page 1 |
        | C.I.7(z) | Other variation | Variation Type Page 1 |
        | C.I.9(z) | Other variation | Variation Type Page 1 |
        | C.I.11(z) | Other variation | Variation Type Page 1 |
        | C.I.12(z) | Other variation | Variation Type Page 1 |
        | C.I.13(z) | Other variation | Variation Type Page 1 |
        | C.I(z) | Other variation | Variation Type Page 1 |
        | C.I(z).1 | Changes (Safety/Efficacy) to human and veterinary medicinal products | Variation Type Page 1 |
        | C.II(z) | Changes to Veterinary Medicinal Products: Other Variation | Variation Type Page 1 |

    @APL-0007-6
    Scenario Outline: User enters a valid code from Data table No Variations
        Given the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table No Variations'
        When they select 'Continue'
        Then they will be directed to the 'Describe Changes' page
        
    Examples: 
        | Sub Code | Description | Page |
        | 1(a) | Replacement of a chemical active substance by a different salt/ester complex/derivative, with the same therapeutic moiety, where the efficacy/safety characteristics are not significantly different | Describe Changes |
        | 1(b) | Replacement by a different isomer, a different mixture of isomers, of a mixture by an isolated isomer (e.g. racemate by a single enantiomer), where the efficacy/safety characteristics are not significantly different; | Describe Changes |
        | 1(c) | Replacement of a biological active substance with one of a slightly different molecular structure where the efficacy/safety characteristics are not significantly different, with the exception of: | Describe Changes |
        | 1(c).(i) | Changes to the active substance of a seasonal, pre-pandemic or pandemic vaccine against human influenza; | Describe Changes |
        | 1(c).(ii) | Replacement or addition of a serotype, strain, antigen or combination of serotypes, strains or antigens for a veterinary vaccine against avian influenza, foot-and-mouth disease or bluetongue; | Describe Changes |
        | 1(c).(iii) | Replacement of a strain for a veterinary vaccine against equine influenza; | Describe Changes |
        | 1(d) | Modification of the vector used to produce the antigen or the source material, including a new master cell bank from a different source, where the efficacy/safety characteristics are not significantly different; | Describe Changes |
        | 1(e) | A new ligand or coupling mechanism for a radiopharmaceutical, where the efficacy/safety characteristics are not significantly different; | Describe Changes |
        | 1(f) | Change to the extraction solvent or the ratio of herbal drug to herbal drug preparation where the efficacy/safety characteristics are not significantly different. | Describe Changes |
        | 2(a) | Change of bioavailability | Describe Changes |
        | 2(b) | Change of pharmakinetics | Describe Changes |
        | 2(c) | Change of bioavailability | Describe Changes |
        | 2(d) | Change or addition of a new strength/potency | Describe Changes |
        | 2(e) | Change or addition of a new route of administration | Describe Changes |
        | 3 | Other changes specific to veterinary medicinal products to be administered to food-producing animals: change or addition of target species | Describe Changes |

    @APL-0007-7
    Scenario Outline: User enters a code from Data Table Z Special
        Given the user can see a text input box
        And they have entered a valid '<Sub Code>' from 'Data Table Z Special'
        When they select 'Continue'
        Then they will be directed to the 'Describe Changes' page
        
    Examples: 
        | Sub Code | Description | Page |
        | A(z).1 | Change in distributer details | Describe Changes |
        | A(z).2 | Change in legal entity | Describe Changes |
        | B(z).1 | Alignment of Part 2 in accordance with the current data regarding methods of production and quality control | Describe Changes |
        | C.I(z).2 | Addition or change to safety warnings | Describe Changes |
        | C.I(z).3 | Approval of mock-ups | Describe Changes |
        | C.I(z).4 | Changes to SPC and/or product literature for MAPIs | Describe Changes |
        | C.I(z).5 | Joint-Labelling Variation | Describe Changes |
        | C.I(z).6 | Normal corrections or simple text layout changes to SPC and/or product literature | Describe Changes |
        | C.I(z).7 | Resubmission of previously refused Type II variations | Describe Changes |
        | C.I(z).8 | Simple changes to dosage instructions | Describe Changes |
        | C.I(z).9 | Submission following formal advice from the VMD | Describe Changes |

    @APL-0007-8
    Scenario Outline: User selects a common variation
        Given the user has been directed to the 'Enter Variation Code' page
        And they will see 5 radio button option(s)
        And they have selected '<Sub Code>' from 'Data Table Common Variations'
        When they select 'Continue'
        Then they will be directed to the '<Page>' page
        
    Examples: 
        | Sub Code | Description | Page |
        | B.III.1(a).2 | Updated certificate from an already approved manufacturer | Variation Type Page 2 |
        | B.II.b.2(c).1 | Not including batch control/testing | Variation Type Page 2 |
        | C.II.6(b) | Other changes | Describe Changes |
        | A(z) | Other variation | Variation Type Page 1 |
        | B.II.b.1(a) | Secondary packaging site | Variation Type Page 2 |

    @APL-0007-9
    Scenario: User does not enter a valid code or select a radio button option
        Given the user has been directed to the 'Enter Variation Code' page
        And they have not entered a valid 'Code'
        And they have not selected any 'radio button'
        When they select 'Continue'
        Then they will see an error message containing 'Enter variation code to continue'
        And they will not be able to continue