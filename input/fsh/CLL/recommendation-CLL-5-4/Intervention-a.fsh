/************************/
/* Intervention Plans */
/************************/
Instance: RezidivBehandlungBCL2undBTKbeiCLL
InstanceOf: recommendation-plan
Usage: #definition
Title: "Rezidivbehandlung mit BCL-2-Inhib. Oder Acalabrutinib"
Description: "Als Rezidivtherapie sollen die zeitlich begrenzte, Venetoclax- basierte Behandlung oder die Dauertherapien mit einem Acalabrutinib (Acalabrutinib, Zanubrutinib, Ibrutinib) einer Chemoimmuntherapie vorgezogen werden."
//* insert canonical-url(covid19-inpatient-therapy, intervention-plan/antithrombotic-prophylaxis-LMWH)
* insert publisher-experimental-version
* name = "RezidivbehandlungBCL2undBTKbeiCLL"
* title = "Rezidivbehandlung mit BCL-2-Inhib. Oder Acalabrutinib"
* description = "Als Rezidivtherapie sollen die zeitlich begrenzte, Venetoclax- basierte Behandlung oder die Dauertherapien mit einem Acalabrutinib (Acalabrutinib, Zanubrutinib, Ibrutinib) einer Chemoimmuntherapie vorgezogen werden."
* date = "2023-05"
* status = #active
* subjectCanonical = Canonical(PopulationCLLRezidivtherapie)
* extension[partOf].valueCanonical = Canonical(RecCollectionRezidivtherapieBCL2undBTKbeiCLL)
* insert rs-combination-exactly(1)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(RezidivtherapieMitBCL2beiCLL)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(RezidivtherapieMitBTKbeiCLL)
  * code = $sct#432102000 "Administration of substance (procedure)"

/**********************/
/* Recommended Actions */
/**********************/

Instance: RezidivtherapieMitBCL2beiCLL
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

Instance: RezidivtherapieMitBTKbeiCLL
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