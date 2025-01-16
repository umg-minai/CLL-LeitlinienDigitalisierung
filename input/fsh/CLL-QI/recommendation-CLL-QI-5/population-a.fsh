
Instance: PopulationQIMedikationErstlinienTherapie
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population für CLL Erstlinien-Therapie"
Description: "Patient*innen mit CLL sollen in der Erstlinienbehandlung mit einer Bcl-2- oder BTK-Inhibitor-basierten Therapie behandelt werden."
* status = #active 
* actual = false
* name = "PopulationQIMedikationErstlinienTherapie"
* description = "Patient*innen mit CLL sollen in der Erstlinienbehandlung mit einer Bcl-2- oder BTK-Inhibitor-basierten Therapie behandelt werden."
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