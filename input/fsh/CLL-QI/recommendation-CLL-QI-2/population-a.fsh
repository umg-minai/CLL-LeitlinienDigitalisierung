/**************/
/* Population */ 
/**************/
Instance: PopulationQIMutationsstatusVorTherapie
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population Genetischer Mutationsstatus vor Therapie"
Description: "Population mit einer Chronisch Lymphatische Leukämie unter Erstlinientherapie"
* status = #active 
* actual = false
* name = "PopulationQIMutationsstatusVorTherapie"
* description = "Population mit einer Chronisch Lymphatische Leukämie unter Erstlinientherapie"
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    //* linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $cs-cll#cllflt "CLL-specific firstline treatment"