/**********************************/
/*     Recommendation CLL 4.3     */
/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecCollectionErstlinieBCL2undBTKbeiCLL
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation Collection CLL: Erstlinien-Behandlung mit BCL-2-Inhib. Oder BTK-Inhibitor (4.3)"
Description: "Patient*innen mit CLL sollen in der Erstlinienbehandlung mit einer BCL-2-Inhibitor- und/oder BTK-Inhibitor-basierten Therapie behandelt werden."
* name = "RecommendationCollection4_3"
* title = "Recommendation Collection CLL: Erstlinien-Behandlung mit BCL-2-Inhib. Oder BTK-Inhibitor (4.3)"
* date = "2024-05-06"
* status = #active
* description = "Patient*innen mit CLL sollen in der Erstlinienbehandlung mit einer BCL-2-Inhibitor- und/oder BTK-Inhibitor-basierten Therapie behandelt werden."
* insert publisher-experimental-version
* insert rs-combination-all
* action[+]
  * title = "ErstlinieBCL2undBTKbeiCLL"
  * code = $cs-common-process#guideline-based-care // ist das richtig??
  * description = "Patient*innen mit CLL sollen in der Erstlinienbehandlung mit einer BCL-2-Inhibitor- und/oder BTK-Inhibitor-basierten Therapie behandelt werden."
  * definitionCanonical = Canonical(ErstlinieBCL2undBTKbeiCLL)