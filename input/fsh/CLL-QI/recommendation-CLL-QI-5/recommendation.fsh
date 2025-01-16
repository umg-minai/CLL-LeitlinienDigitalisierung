/**********************************/
/*     Recommendation CLL-QI 5    */
/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecCollectionQIMedikationErstlinienTherapie
InstanceOf: recommendation
Usage: #definition
Title: "QI 5: Bcl-2- oder BTK-Inhibitor-basierten Therapie als Erstlinientherapie (neu 2024)"
Description: "Patient*innen mit CLL sollen in der Erstlinienbehandlung mit einer Bcl-2- oder BTK-Inhibitor-basierten Therapie behandelt werden."
* name = "RecommendationCollection_QI_5"
* title = "QI 5: Bcl-2- oder BTK-Inhibitor-basierten Therapie als Erstlinientherapie (neu 2024)"
* date = "2024-07-08"
* status = #active
* description = "Patient*innen mit CLL sollen in der Erstlinienbehandlung mit einer Bcl-2- oder BTK-Inhibitor-basierten Therapie behandelt werden."
* insert publisher-experimental-version
* insert rs-combination-all
* action[+]
  * title = "QICLLErstlinienTherapie"
  * code = $cs-common-process#guideline-based-care
  * description = "QI 5: Bcl-2- oder BTK-Inhibitor-basierten Therapie als Erstlinientherapie (neu 2024)"
  * definitionCanonical = Canonical(QICLLErstlinienTherapie)

  