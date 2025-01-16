/**********************************/
/*     Recommendation CLL-QI 4    */
/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecCollectionQIRezidivKlinischeStudien
InstanceOf: recommendation
Usage: #definition
Title: "QI 4: Einschluss von CLL-Pat. mit Rezidiv in klinische Studien (modifiziert 2024)"
Description: "Patient*innen mit einem Rezidiv sollen, sofern eine passende klinische Studie verfügbar ist, die Therapie im Rahmen einer klinischen Studie angeboten werden."
* name = "RecommendationCollection_QI_4"
* title = "QI 4: Einschluss von CLL-Pat. mit Rezidiv in klinische Studien (modifiziert 2024)"
* date = "2024-07-08"
* status = #active
* description = "Patient*innen mit einem Rezidiv sollen, sofern eine passende klinische Studie verfügbar ist, die Therapie im Rahmen einer klinischen Studie angeboten werden."
* insert publisher-experimental-version
* insert rs-combination-all
* action[+]
  * title = "QIRezidivKlinischeStudien"
  * code = $cs-common-process#guideline-based-care
  * description = "QI 4: Einschluss von CLL-Pat. mit Rezidiv in klinische Studien (modifiziert 2024)"
  * definitionCanonical = Canonical(QIRezidivKlinischeStudien)