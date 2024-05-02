/**************/
/* Population */
/**************/
Instance: PopulationCLLPlanungOnkoTherapie
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "PopulationCLLPlanungOnkoTherapie"
Description: "Population die eine Chronisch Lymphatische Leukämie hat und bei der eine Therapieplanung ansteht"
* status = #active 
* url = ".."
* name = "PopulationCLLPlanungOnkoTherapie"
* description = "Population die eine Chronisch Lymphatische Leukämie hat und bei der eine Therapieplanung ansteht"
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[+]
    //linkId = "CLL"
    * definitionByTypeAndValue
    // typeCodeableConcept *must* use the code below
    * typeCodeableConcept  = $sct#404684003 "Clinical finding (finding)"
    * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[+]
    // linkId = "DevelopingATreatmentPlan"
    * definitionByTypeAndValue
    // typeCodeableConcept *must* use the code below
    * typeCodeableConcept = $sct#71388002 "Procedure (procedure)"
    * valueCodeableConcept = $sct#225292002 "Developing a treatment plan"
  * characteristic[0].exclude = false