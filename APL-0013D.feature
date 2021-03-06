Feature: User who has entered a valid code from Data Table IB Only checks, and is able to change answers
    Description:
        Reference: APL-0013D
        Jira: GS-19

    Background: Given the user has completed the GS-18 steps

    @APL-0013D
    Scenario Outline: User who has entered a valid code from Data Table IB Only is directed to 'Check your answers' page 
        Given the user has been directed to the 'Check Your Answers' page
        And they have entered a variation code from Data Table 'Data Table IB Only'
        When page 'Check Your Answers' loads
        Then they will see a 'Back' link
        And a 'Sign out' link
        And a sub header 'Vary a marketing authorisation
        And a page header 'Check your answers before submitting'
        And a section header 'Product Details'
        And a table with a row with the list item 'Procedure Type' and the 'selected procedure type' displayed and a change link
        And a table with a row with the list item 'Procedure Option' and the 'selected procedure option' displayed and a change link
        And a table with a row with the list item 'Products' and the 'selected product' displayed and a change link
        And a section header 'Variation Details'
        And a list header 'Variation 1'
        And a table with a row with the list item 'Code' and the '<Sub Code>' displayed 
        And a table with a row with the list item 'Description' and the 'Variation description' displayed and a change link
        And a table with a row with the list item 'Variation Type' and the 'selected variation type' displayed and a change link
        And a table with a row with the list item 'Present' and the 'present situation text' displayed and a change link
        And a table with a row with the list item Proposed' and the 'proposed change text' displayed and a change link
        And a section header 'Supporting Documents' with a 'Change' link
        And a table with a row with the list item 'Label/ Package leaflet text (QRD). If your variation affects the labelling and/ or package leaflet (QRD text). Please provide proposed versions (in editable Word format) for each product included in the application; do not provide mock-ups at this stage' and the 'selection status' displayed 
        And a table with a row with the list item 'Mock-Ups, if applicable. Only provide mock-ups if your variation is for the approval of mock-ups, e.g. C.II.6(b)' and the 'selection status' displayed 
        And a table with a row with the list item 'Copy of the relevant page(s) from the Variation Guideline for the change(s) with the relevant boxes for conditions and documentation ticked' and the 'selection status' displayed 
        And a table with a row with the list item 'Summary of the product characteristics (SPC), if applicable. If your variation affects the SPC, please provide proposed versions (in editable Word format) for each product included in the application' and the 'selection status' displayed 
        And a table with a row with the list item 'Omitted Documents' and the 'omitted documents text' displayed 
        And a table with a row with the list item Other Information' and the 'other information text' displayed 
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

    @APL-0013D-1
    Scenario: User selects change link for Product
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Product 1'
        When they select 'Product change link'
        Then they will be directed to the 'Select Product 1' page

    @APL-0013D-2
    Scenario: User selects change link for Describe changes
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change' link for 'Describe changes'
        When they select 'Describe changes change link'
        Then they will be directed to the 'Describe changes' page

    @APL-0013D-3
    Scenario Outline: User selects change variation link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a 'Change variation' link for 'Variation <Sub Code>'
        When they select 'change variation link'
        Then they will be directed to the 'Confirm Change Variation' page
        
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

    @APL-0013D-4
    Scenario: User selects the 'Save and exit' link
        Given the user has been directed to the 'Check Your Answers' page
        And they can see a save and exit link
        When they select 'Save and exit link'
        Then they will be directed to the 'Incomplete applications' page

    @APL-0013D-5
    Scenario: User selects 'Continue' option
        Given the user has been directed to the 'Check Your Answers' page
        When they select 'Continue'
        Then they will be directed to the 'Declaration' page