/**************/
/* Population */ 
/**************/
Instance: PopulationCLLPlanungOnkoTherapie
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: CLL und Planung Onkologische Therapielinie"
Description: "Population die eine Chronisch Lymphatische Leukämie hat und bei der eine Therapieplanung ansteht"
* status = #active 
* actual = false
* name = "PopulationCLLPlanungOnkoTherapie"
* description = "Population die eine Chronisch Lymphatische Leukämie hat und bei der eine Therapieplanung ansteht"
* characteristic[+].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    * linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#225292002 "Developing a treatment plan"
  * characteristic[0].exclude = false

Instance: PopulationCLLPlanungOnkoTherapieFertileFemale
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: CLL und Planung Onkologische Therapielinie gebährfähige Frauen"
Description: "Population die eine Chronisch Lymphatische Leukämie hat, weiblich und in einem gebährfähigen Alter ist und bei der eine Therapieplanung ansteht"
* status = #active 
* actual = false
* name = "PopulationCLLPlanungOnkoTherapieFertileFemale"
* description = "Population die eine Chronisch Lymphatische Leukämie hat, weiblich und in einem gebährfähigen Alter ist und bei der eine Therapieplanung ansteht"
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    //* linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#225292002 "Developing a treatment plan"
  * characteristic[condition][+] 
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#22636003 "Premenopausal state"
  * characteristic[0].exclude = false


Instance: PopulationCLLPlanungOnkoTherapieIdelalisib
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: CLL und Planung Onkologische Therapielinie mit Idelalisib Frauen"
Description: "Population die eine Chronisch Lymphatische Leukämie hat und bei der eine Therapieplanung mit Idelalisib ansteht"
* status = #active 
* actual = false
* name = "PopulationCLLPlanungOnkoTherapieIdelalisib"
* description = "Population die eine Chronisch Lymphatische Leukämie hat und bei der eine Therapieplanung mit Idelalisib ansteht"
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    //* linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#225292002 "Developing a treatment plan"
  * characteristic[drugAdministration][+] //TODO @Gregor geht das so.. nein wahrscheinlich nicht, neuer slice für Drug-Administration???
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#105590001 "Idelalisib"
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
  * characteristic[drugAdministration][+] //TODO @Gregor geht das so.. nein wahrscheinlich nicht, neuer slice für Drug-Administration???
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#105590001 "Idelalisib"
  * characteristic[0].exclude = false