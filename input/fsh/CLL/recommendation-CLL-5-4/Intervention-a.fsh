/************************/
/* Intervention Plans */
/************************/
Instance: RezidivBehandlungBCL2undBTKbeiCLL
InstanceOf: recommendation-plan
Usage: #definition
Title: "Rezidivbehandlung mit BCL-2-Inhib. Oder BTK-Inhibitor"
Description: "Als Rezidivtherapie sollen die zeitlich begrenzte, Venetoclax- basierte Behandlung oder die Dauertherapien mit einem BTK-Inhibitor (Acalabrutinib, Zanubrutinib, Ibrutinib) einer Chemoimmuntherapie vorgezogen werden."
//* insert canonical-url(covid19-inpatient-therapy, intervention-plan/antithrombotic-prophylaxis-LMWH)
* insert publisher-experimental-version
* name = "RezidivbehandlungBCL2undBTKbeiCLL"
* title = "Rezidivbehandlung mit BCL-2-Inhib. Oder BTK-Inhibitor"
* description = "Als Rezidivtherapie sollen die zeitlich begrenzte, Venetoclax- basierte Behandlung oder die Dauertherapien mit einem BTK-Inhibitor (Acalabrutinib, Zanubrutinib, Ibrutinib) einer Chemoimmuntherapie vorgezogen werden."
* date = "2023-05"
* status = #active
* subjectCanonical = Canonical(PopulationCLLRezidivtherapie)
* extension[partOf].valueCanonical = Canonical(RecCollectionRezidivtherapieBCL2undBTKbeiCLL)
* insert rs-combination-exactly(1)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(RezidivtherapieMitVenetoclaxBeiCLL)
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(RezidivtherapieMitBTKbeiCLL)
  * code = $sct#432102000 "Administration of substance (procedure)"

/**********************/
/* Recommended Actions */
/**********************/
Instance: RezidivtherapieMitVenetoclaxBeiCLL
InstanceOf: drug-administration-action
Usage: #definition
Title: "Rezidivtherapie mit Venetoclax bei CLL"
Description: "Rezidivtherapie mit Venetoclax bei CLL"
* name = "RezidivtherapieMitVenetoclaxBeiCLL"
* insert publisher-experimental-version
* status = #active
* description = "Rezidivtherapie mit Venetoclax bei CLL"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#720491001 "Venetoclax"
 /* dosage[+]
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing //nicht definiert in dieser Leitlinie
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate //nicht definiert in dieser Leitlinie
    * doseQuantity = 200 '[iU]/kg' "IU/kg"*/


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
 /* dosage[+]
  * route = $sct#34206005 "Subcutaneous route (qualifier value)"
  * timing //nicht definiert in dieser Leitlinie
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate //nicht definiert in dieser Leitlinie
    * doseQuantity = 200 '[iU]/kg' "IU/kg"*/