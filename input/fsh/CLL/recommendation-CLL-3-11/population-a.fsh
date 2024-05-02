/**************/
/* Population */
/**************/
Instance: PopulationCLLPlanungOnkoTherapie
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population : CLL und Planung Onkologische Therapielinie"
Description: "Population die eine Chronisch Lymphatische Leukämie hat und bei der eine Therapieplanung ansteht"
* status = #active 
* actual = false
// identifier.value = "WithoutContraIndications"
// identifier.system = $ceosys
// url = ".."
* name = "PopulationCLLPlanungOnkoTherapie"
* description = "Population die eine Chronisch Lymphatische Leukämie hat und bei der eine Therapieplanung ansteht"
// insert canonical-url(covid19-inpatient-therapy, population/hospitalised-covid19-patients-no-LMWH-contraindications)
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condtion][+]
    * linkId = "CLL"
    * definitionByTypeAndValue
    // typeCodeableConcept *must* use the code below
    // typeCodeableConcept  = $sct#404684003 "Clinical finding (finding)"
    * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[procedure][+]
    // linkId = "DevelopingATreatmentPlan"
    * definitionByTypeAndValue
    // typeCodeableConcept *must* use the code below
    // typeCodeableConcept = $sct#71388002 "Procedure (procedure)"
    * valueCodeableConcept = $sct#225292002 "Developing a treatment plan"
  * characteristic[0].exclude = false