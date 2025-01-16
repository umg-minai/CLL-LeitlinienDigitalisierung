/************************/
/* Intervention Plans   */ 
/************************/
Instance: QIRezidivKlinischeStudien
InstanceOf: recommendation-plan
Usage: #definition
Title: "QI 4: Einschluss von CLL-Pat. mit Rezidiv in klinische Studien (modifiziert 2024))"
Description: "Patient*innen mit einem Rezidiv sollen, sofern eine passende klinische Studie verfügbar ist, die Therapie im Rahmen einer klinischen Studie angeboten werden.)"
* insert publisher-experimental-version
* name = "QIRezidivKlinischeStudien"
* title = "QI 4: Einschluss von CLL-Pat. mit Rezidiv in klinische Studien (modifiziert 2024)"
* description = "Patient*innen mit einem Rezidiv sollen, sofern eine passende klinische Studie verfügbar ist, die Therapie im Rahmen einer klinischen Studie angeboten werden."
* date = "2024-07"
* status = #active
* insert rs-combination-all
* subjectCanonical = Canonical(PopulationQIRezidivKlinischeStudien)
* extension[partOf].valueCanonical = Canonical(RecCollectionQIRezidivKlinischeStudien)
* action[assessment][+]
  * definitionCanonical = Canonical(CLLPatientInCLLRelapseStudy)

/**********************/
/* Recommended Actions */
/**********************/
Instance: CLLPatientInCLLRelapseStudy
InstanceOf: ActivityDefinition
Usage: #definition
Title: "CLLPatientInCLLRelapseStudy"
Description: "CLLPatientInCLLRelapseStudy"
* name = "CLLPatientInCLLRelapseStudy"
* insert publisher-experimental-version
* status = #active
* description = "Patient*innen mit einem Rezidiv sollen, sofern eine passende klinische Studie verfügbar ist, die Therapie im Rahmen einer klinischen Studie angeboten werden."
* code = $cs-cll#cllrlpsincl "Inclusion into specific CLL relapse treatment study"
