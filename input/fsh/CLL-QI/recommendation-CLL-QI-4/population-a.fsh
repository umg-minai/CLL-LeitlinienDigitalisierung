/**************/
/* Population */ 
/**************/
Instance: PopulationQIRezidivKlinischeStudien
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population CLL Rezidiv einschluss in klinische Studien"
Description: "Population CLL Pat. mit Rezidiv"
* status = #active 
* actual = false
* name = "PopulationQIRezidivKlinischeStudien"
* description = "QI 4: Einschluss von Pat. mit Rezidiv in klinische Studien (modifiziert 2024)"
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    //* linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $cs-cll#cllrlpstherapy "CLL-relapse under treatment"