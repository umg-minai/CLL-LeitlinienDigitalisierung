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
* insert rs-combination-at-least(1)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ErstlinieMitBCL2beiCLL)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ErstlinieMitAcalabrutinibBeiCLL)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ErstlinieMitIbrutinibBeiCLL)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ErstlinieMitZanubrutinibBeiCLL)
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
 /* dosage[+] // TODO ggf. später mit Fachinfo/Packungsbeilage ergänzen 
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing //nicht definiert in dieser Leitlinie
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate //nicht definiert in dieser Leitlinie
    * doseQuantity = 200 '[iU]/kg' "IU/kg"*/

Instance: ErstlinieMitAcalabrutinibBeiCLL
InstanceOf: drug-administration-action
Usage: #definition
Title: "Erstlinienterapie mit Acalabrutinib bei CLL"
Description: "Erstlinienterapie mit Acalabrutinib bei CLL"
* name = "ErstlinieMitAcalabrutinibBeiCLL"
* insert publisher-experimental-version
* status = #active
* description = "Erstlinienterapie mit Acalabrutinib bei CLL"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#763037006 "Acalabrutinib"

Instance: ErstlinieMitIbrutinibBeiCLL
InstanceOf: drug-administration-action
Usage: #definition
Title: "Erstlinienterapie mit Ibrutinib bei CLL"
Description: "Erstlinienterapie mit Ibrutinib bei CLL"
* name = "ErstlinieMitIbrutinibBeiCLL"
* insert publisher-experimental-version
* status = #active
* description = "Erstlinienterapie mit Ibrutinib bei CLL"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#710228002 "Ibrutinib"

Instance: ErstlinieMitZanubrutinibBeiCLL
InstanceOf: drug-administration-action
Usage: #definition
Title: "Erstlinienterapie mit Zanubrutinib bei CLL"
Description: "Erstlinienterapie mit Zanubrutinib bei CLL"
* name = "ErstlinieMitZanubrutinibBeiCLL"
* insert publisher-experimental-version
* status = #active
* description = "Erstlinienterapie mit Zanubrutinib bei CLL"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#830162004 "Zanubrutinib"
