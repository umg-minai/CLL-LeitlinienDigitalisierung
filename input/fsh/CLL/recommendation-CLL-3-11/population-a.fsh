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
* characteristic[condition][+]
  * code.coding[sct] = $sct#92814006:{246456000 = 288527008,263502005 = 255314001,47429007 = 225292002 }
  //CLL:{Episodicity = New Episode,Clinical course = Progressive ,Associated with = Developing a treatment plan}

/*
* characteristic[+].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] // TODO: CLL-Progress requiring treatment
    * linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#225292002 "Developing a treatment plan"
  * characteristic[0].exclude = false

FULL PCE:  
92814006 |Chronic lymphoid leukemia, disease (disorder)|:
{363698007 |Finding site  (attribute)| = 14016003 |Bone marrow structure (body structure)|,
116676008 |Associated morphology  (attribute)| = 51092000 |B-cell chronic lymphocytic leukemia/small lymphocytic lymphoma (morphologic abnormality)|,
246456000 |Episodicity (attribute)| = 288527008 |New episode (qualifier value)|,
263502005 |Clinical course (attribute)| = 255314001 |Progressive (qualifier value)|,
47429007 |Associated with (attribute)| = 225292002 |Developing a treatment plan (procedure)|}

*/



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
  * characteristic[drugAdministration][+]
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
  * characteristic[drugAdministration][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#105590001 "Idelalisib"
  * characteristic[0].exclude = false