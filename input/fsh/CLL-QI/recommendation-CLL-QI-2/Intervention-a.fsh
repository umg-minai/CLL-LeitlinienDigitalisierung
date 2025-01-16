/************************/
/* Intervention Plans   */ 
/************************/
Instance: QIMutationsstatusVorTherapie
InstanceOf: recommendation-plan
Usage: #definition
Title: "QI 2: Bestimmung TP53-Deletions- und TP53-/IGHV-Mutationsstatus vor erster systemischer CLL-Therapie (modifiziert 2024)"
Description: "Folgende Untersuchungsverfahren sollen vor Einleitung einer neuen Therapielinie zur Anwendung kommen: (I) Bestimmung des TP53-Deletions- und Mutationsstatus (FISH hinsichtlich del(17)(p13) und TP53-Mutationsanalyse); (II) Erhebung des IGHV-Mutationsstatus (sofern noch nicht bekannt)"
* insert publisher-experimental-version
* name = "UntersuchungenVorCLLPlanungOnkoTherapie"
* title = "QI 2: Bestimmung TP53-Deletions- und TP53-/IGHV-Mutationsstatus vor erster systemischer CLL-Therapie (modifiziert 2024)"
* description = "Folgende Untersuchungsverfahren sollen vor Einleitung einer neuen Therapielinie zur Anwendung kommen: (I) Bestimmung des TP53-Deletions- und Mutationsstatus (FISH hinsichtlich del(17)(p13) und TP53-Mutationsanalyse); (II) Erhebung des IGHV-Mutationsstatus (sofern noch nicht bekannt)"
* date = "2024-07"
* status = #active
* subjectCanonical = Canonical(PopulationQIMutationsstatusVorTherapie)
* extension[partOf].valueCanonical = Canonical(RecCollectionQIMutationsstatusVorTherapie)
* insert rs-combination-all
* action[assessment][+]
  * definitionCanonical = Canonical(TP53andDEL17pCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(IGHVmutationCLL)

/**********************/
/* Recommended Actions */
/**********************/

Instance: TP53andDEL17pCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "FISH hinsichtlich TP53 und DEL17p"
Description: "TP53-Deletions- und Mutationsstatus (FISH hinsichtlich del17p und TP53-Mutationsanalyse ≤ 12 Wochen vor Therapiebeginn)"
* name = "TP53andDEL17pCLL"
* description = "TP53-Deletions- und Mutationsstatus (FISH hinsichtlich del17p und TP53-Mutationsanalyse ≤ 12 Wochen vor Therapiebeginn)"
* insert publisher-experimental-version
* status = #active
* code = $loinc#103680-5 "TP53 gene full mutation analysis in Blood or Tissue by Molecular genetics method"
* insert rs-timingCLL(12) //TODO: relative timing darf hier laut FHIR Validator nicht genutzt werden.

Instance: IGHVmutationCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "IGHV-Mutationsstatus"
Description: "Bekannter IGHV-Mutationsstatus vor Therapiebeginn"
* name = "IGHVmutationCLL"
* description = "Bekannter IGHV-Mutationsstatus vor Therapiebeginn"
* insert publisher-experimental-version
* status = #active
* code = $loinc#78221-9 "IGH gene rearrangements [Presence] in Blood or Tissue by FISH"
* insert rs-timingCLL(12) 

// TODO: ich möchte hier zeitlich darstellen: Der Mutationsstatus wurde bestimmt oder ist bereits bekannt (kann ich dann die Zeit einfach weglassen?)
// Greogor relative time "vor" nutzen
