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
* experimental = true //Stimmt das?
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll" // Wer soll das werden?
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL" //so?
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

Instance: ErstlinieMitBTKbeiCLL
InstanceOf: drug-administration-action
Usage: #definition
Title: "Erstlinienterapie mit BTK-Inhibitor bei CLL"
Description: "Erstlinienterapie mit BTK-Inhibitor bei CLL"
* name = "ErstlinieMitBTKbeiCLL"
* experimental = true //Stimmt das?
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll" // Wer soll das werden?
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL" //so?
* status = #active
* description = "Erstlinienterapie mit BTK-Inhibitor bei CLL"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#710227007 "Non-specific protein-tyrosine kinase inhibitor"
 /* dosage[+]
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing //nicht definiert in dieser Leitlinie
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate //nicht definiert in dieser Leitlinie
    * doseQuantity = 200 '[iU]/kg' "IU/kg"*/