/************************/
/* Intervention Plans */
/************************/
Instance: ErstlinieBCL2undBTKbeiCLL
InstanceOf: recommendation-plan
Usage: #definition
Title: "Erstlinientherapie mit BCL-2- und oder BTK-Inhibitor bei CLL"
Description: "Patient*innen mit CLL sollen in der Erstlinienbehandlung mit einer BCL-2-Inhibitor- und/oder BTK-Inhibitor-basierten Therapie behandelt werden."
//* insert canonical-url(covid19-inpatient-therapy, intervention-plan/antithrombotic-prophylaxis-LMWH)
* insert publisher-experimental-version
* name = "ErstlinieBCL2undBTKbeiCLL"
* title = "Erstlinientherapie mit BCL-2- und oder BTK-Inhibitor bei CLL"
* description = "Patient*innen mit CLL sollen in der Erstlinienbehandlung mit einer BCL-2-Inhibitor- und/oder BTK-Inhibitor-basierten Therapie behandelt werden."
* date = "2023-05"
* status = #active
* subjectCanonical = Canonical(PopulationCLLErstlinientherapie)
* extension[partOf].valueCanonical = Canonical(RecCollectionErstlinieBCL2undBTKbeiCLL)
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
Instance: ErstlinieMitBCL2beiCLL
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

Instance: ErstlinieMitBTKbeiCLL
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
