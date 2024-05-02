/**************/
/* Population */
/**************/
Instance: Population-CLL-PlanungOnkoTherapie
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population-CLL-PlanungOnkoTherapie"
Description: "Population die eine Chronisch Lymphatische Leukämie hat und bei der eine Therapieplanung ansteht"
* status = #active 
* url = ".."
* name = "Population-CLL-PlanungOnkoTherapie"
* description = "Population die eine Chronisch Lymphatische Leukämie hat und bei der eine Therapieplanung ansteht"
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[+]
    * linkId = "CLL"
    * definitionByTypeAndValue
    // typeCodeableConcept *must* use the code below
    * typeCodeableConcept  = $sct#404684003 "Clinical finding (finding)"
    * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[+]
    * linkId = "DevelopingATreatmentPlan"
    * definitionByTypeAndValue
    // typeCodeableConcept *must* use the code below
    * typeCodeableConcept = $sct#71388002 "Procedure (procedure)"
    * valueCodeableConcept = $sct#225292002 "Developing a treatment plan"
  * characteristic[condition][=].exclude = false