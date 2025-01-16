/************************/
/* Intervention Plans   */ 
/************************/
Instance: QICLLErstlinienTherapie
InstanceOf: recommendation-plan
Usage: #definition
Title: "QI 5: Bcl-2- oder BTK-Inhibitor-basierten Therapie als Erstlinientherapie (neu 2024)"
Description: "Patient*innen mit CLL sollen in der Erstlinienbehandlung mit einer Bcl-2- oder BTK-Inhibitor-basierten Therapie behandelt werden."
* insert publisher-experimental-version
* name = "QICLLErstlinienTherapie"
* title = "QI 5: Bcl-2- oder BTK-Inhibitor-basierten Therapie als Erstlinientherapie (neu 2024)"
* description = "Patient*innen mit CLL sollen in der Erstlinienbehandlung mit einer Bcl-2- oder BTK-Inhibitor-basierten Therapie behandelt werden."
* date = "2024-07"
* status = #active
* subjectCanonical = Canonical(PopulationQIMedikationErstlinienTherapie)
* extension[partOf].valueCanonical = Canonical(RecCollectionQIMedikationErstlinienTherapie)
* insert rs-combination-exactly(1)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ErstlinieMitBCL2beiCLL)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ErstlinieMitBTKbeiCLL)
  * code = $sct#432102000 "Administration of substance (procedure)"

/**********************/
/* Recommended Actions */
/**********************/
/*
Instance: ErstlinieMitBCL2beiCLLQI // TODO ich habe die selbe Instance bereits für das CLL Empfehlungsprojekt definiert, damit die von einander unabhängig sein können, habe ich diese aber anders genannt, so ist auch SUSHI zufrieden, dass ich nicht die selbe Instance zweimal habe.
InstanceOf: drug-administration-action
Usage: #definition
Title: "Erstlinienterapie mit BCL2-Inhibitor bei CLL"
Description: "Erstlinienterapie mit BCL2-Inhibitor bei CLL"
* name = "ErstlinieMitBCL2beiCLL"
* insert publisher-experimental-version
* status = #active
* description = "Erstlinienterapie mit BCL2-Inhibitor bei CLL"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#725567006 "B-cell lymphoma 2 inhibitor"

Instance: ErstlinieMitBTKbeiCLLQI // TODO ich habe die selbe Instance bereits für das CLL Empfehlungsprojekt definiert, damit die von einander unabhängig sein können, habe ich diese aber anders genannt, so ist auch SUSHI zufrieden, dass ich nicht die selbe Instance zweimal habe.
InstanceOf: drug-administration-action
Usage: #definition
Title: "Rezidivtherapie mit BTK-Inhibitor bei CLL"
Description: "Rezidivtherapie mit BTK-Inhibitor bei CLL"
* name = "RezidivtherapieMitBTKbeiCLL"
* insert publisher-experimental-version
* status = #active
* description = "Rezidivtherapie mit BTK-Inhibitor bei CLL"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#710227007 "Non-specific protein-tyrosine kinase inhibitor"
*/