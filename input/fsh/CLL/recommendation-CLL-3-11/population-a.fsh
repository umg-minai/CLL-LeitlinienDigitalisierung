/**************/
/* Population */ 
/**************/
Instance: PopulationCLLPlanungOnkoTherapie
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: CLL und Planung Onkologische Therapielinie"
Description: "Population mit einer Chronisch Lymphatische Leukämie und einem behandlungsbedürftigen Progress"
* status = #active 
* actual = false
* name = "PopulationCLLPlanungOnkoTherapie"
* description = "Population mit einer Chronisch Lymphatische Leukämie und einem behandlungsbedürftigen Progress"
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    //* linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $cs-cll#dprnt "Disease progression that requires adapted or new treatment"



Instance: PopulationCLLPlanungOnkoTherapieFertileFemale
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: CLL und Planung Onkologische Therapielinie gebährfähige Frauen"
Description: "Population mit einer Chronisch Lymphatische Leukämie, einem behandlungsbedürftigen Progress und weiblich in einem gebährfähigen Alter"
* status = #active 
* actual = false
* name = "PopulationCLLPlanungOnkoTherapieFertileFemale"
* description = "Population mit einer Chronisch Lymphatische Leukämie, einem behandlungsbedürftigen Progress und weiblich in einem gebährfähigen Alter"
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $cs-cll#dprnt "Disease progression that requires adapted or new treatment"
  * characteristic[condition][+] 
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#22636003 "Premenopausal state"
  * characteristic[0].exclude = false


Instance: PopulationCLLPlanungOnkoTherapieIdelalisib
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: CLL und Planung Onkologische Therapielinie mit Idelalisib"
Description: "Population mit einer Chronisch Lymphatische Leukämie, einem behandlungsbedürftigen Progress und bei der eine Therapieplanung mit Idelalisib ansteht"
* status = #active 
* actual = false
* name = "PopulationCLLPlanungOnkoTherapieIdelalisib"
* description = "Population mit einer Chronisch Lymphatische Leukämie, einem behandlungsbedürftigen Progress und bei der eine Therapieplanung mit Idelalisib ansteht"
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    //* linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $cs-cll#dprnti "Disease progression that requires adapted or new treatment with idelalisib"
  * characteristic[0].exclude = false
  
Instance: PopulationCLLOnkoTherapieIdelalisib
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: CLL onkologische Therapielinie mit Idelalisib Frauen"
Description: "Population, die eine Chronisch Lymphatische Leukämie hat und die mit Idelalisib behandelt werden"
* status = #active 
* actual = false
* name = "PopulationCLLOnkoTherapieIdelalisib"
* description =  "Population, die eine Chronisch Lymphatische Leukämie hat und die mit Idelalisib behandelt werden"
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    //* linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[drugAdministration][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#105590001 "Idelalisib"
  * characteristic[0].exclude = false