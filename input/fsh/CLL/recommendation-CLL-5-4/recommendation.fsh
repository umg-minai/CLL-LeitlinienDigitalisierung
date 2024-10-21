/**********************************/
/*     Recommendation CLL 5.4     */
/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecCollectionRezidivtherapieBCL2undBTKbeiCLL
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation Collection CLL: Rezidivbehandlung mit BCL-2-Inhib. Oder BTK-Inhibitor (5.4)"
Description: "Als Rezidivtherapie sollen die zeitlich begrenzte, Venetoclax- basierte Behandlung oder die Dauertherapien mit einem BTK-Inhibitor (Acalabrutinib, Zanubrutinib, Ibrutinib) einer Chemoimmuntherapie vorgezogen werden."
* name = "RecommendationCollection5_4"
* title = "Recommendation Collection CLL: Rezidivbehandlung mit BCL-2-Inhib. Oder BTK-Inhibitor (5.4)"
* insert publisher-experimental-version
* insert rs-combination-all
* date = "2024-05-06"
* status = #active
* description = "Als Rezidivtherapie sollen die zeitlich begrenzte, Venetoclax- basierte Behandlung oder die Dauertherapien mit einem BTK-Inhibitor (Acalabrutinib, Zanubrutinib, Ibrutinib) einer Chemoimmuntherapie vorgezogen werden."
* action[+]
  * title = "RezidivBehandlungBCL2undBTKbeiCLL"
  * code = $cs-common-process#guideline-based-care // ist das richtig??
  * description = "Patient*innen mit CLL sollen in der Rezidivbehandlung mit einer BCL-2-Inhibitor- und/oder BTK-Inhibitor-basierten Therapie behandelt werden."
  * definitionCanonical = Canonical(RezidivBehandlungBCL2undBTKbeiCLL)
