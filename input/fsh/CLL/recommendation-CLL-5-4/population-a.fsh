/**************/
/* Population */
/**************/
Instance: PopulationCLLRezidivtherapie
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: CLL und Rezidivtherapie"
Description: "Population, die eine Chronisch Lymphatische Leukämie hat und eine Rezidivtherapie bekommt"
* status = #active 
* actual = false
* name = "PopulationCLLRezidivtherapie"
* description = "Population, die eine Chronisch Lymphatische Leukämie hat und eine Rezidivtherapie bekommt"
// insert canonical-url(covid19-inpatient-therapy, population/hospitalised-covid19-patients-no-LMWH-contraindications)
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    * linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[procedure][+]
    * linkId = "CLL"
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $cs-cll#cllrete "CLL Relapse therapy"