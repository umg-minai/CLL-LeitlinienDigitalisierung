/**************/
/* Population */
/**************/
Instance: PopulationCLLBinetC
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: CLL und Binet Stadium C"
Description: "Population, die eine Chronisch Lymphatische Leukämie hat und bei der eine Binet Stadium C vorliegt"
* status = #active 
* actual = false
* name = "PopulationCLLBinetC"
* description = "Population, die eine Chronisch Lymphatische Leukämie hat und bei der eine Binet Stadium C vorliegt"
// insert canonical-url(covid19-inpatient-therapy, population/hospitalised-covid19-patients-no-LMWH-contraindications)
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    * linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[assessmentScale][+]
    * definitionByTypeAndValue
      * type = $sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia"
      * valueCodeableConcept = $sct-uk#863781000000100 "Clinical stage C chronic lymphocytic leukaemia"

Instance: PopulationCLLBinetAB
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: CLL und Binet Stadium AB "
Description: "Population, bei der Binet A oder B sowie eine bestimmte klinische Symptomatik vorliegt"
* status = #active 
* actual = false
* name = "PopulationCLLBinetAB"
* description = "Population, bei der Binet A oder B sowie eine bestimmte klinische Symptomatik vorliegt"
// insert canonical-url(covid19-inpatient-therapy, population/hospitalised-covid19-patients-no-LMWH-contraindications)
* characteristic[0].definitionByCombination 
  * code = #all-of
  * characteristic[condition][+] 
    * linkId = "CLL"
    * definitionByTypeAndValue
      * type  = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#92814006 "Chronic lymphoid leukaemia, disease"
  * characteristic[+].definitionByCombination 
    * code = #any-of
    * characteristic[assessmentScale][+]
      * definitionByTypeAndValue
        * type = $sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia"
        * valueCodeableConcept = $sct-uk#863741000000108 "Clinical stage A chronic lymphocytic leukaemia" 
    * characteristic[assessmentScale][+] 
      * definitionByTypeAndValue
        * type = $sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia"
        * valueCodeableConcept = $sct-uk#863761000000109 "Clinical stage B chronic lymphocytic leukaemia"
  * characteristic[+].definitionByCombination 
    * code = #any-of
    * characteristic[condition][+] 
      * linkId = "CLL"
      * definitionByTypeAndValue
        * type  = $sct#404684003 "Clinical finding (finding)"
        * valueCodeableConcept = $sct#161832001 "Weight decreasing"
    * characteristic[condition][+] 
      * linkId = "CLL"
      * definitionByTypeAndValue
        * type  = $sct#404684003 "Clinical finding (finding)"
        * valueCodeableConcept = $sct#7520000 "Pyrexia of unknown origin"
    * characteristic[condition][+] 
      * linkId = "CLL"
      * definitionByTypeAndValue
        * type  = $sct#404684003 "Clinical finding (finding)"
        * valueCodeableConcept = $sct#42984000 "Night sweats"
    * characteristic[+].definitionByCombination 
      * code = #all-of
      * characteristic[condition][+] 
        * linkId = "CLL"
        * definitionByTypeAndValue
          * type  = $sct#404684003 "Clinical finding (finding)"
          * valueCodeableConcept = $sct#271737000 "Anemia"
      * characteristic[observation][+]
        * linkId = "CLL"
        * definitionByTypeAndValue
          * type = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
          * valueCodeableConcept = $sct#260371004 "Decreasing"
    * characteristic[+].definitionByCombination 
      * code = #all-of  
      * characteristic[condition][+] 
        * linkId = "CLL"
        * definitionByTypeAndValue
          * type  = $sct#404684003 "Clinical finding (finding)"
          * valueCodeableConcept = $sct#302215000 "Thrombocytopenic disorder"      
      * characteristic[observation][+] 
        * linkId = "CLL"
        * definitionByTypeAndValue
          * type = $loinc#26515-7 "Platelets [#/volume] in Blood"
          * valueCodeableConcept = $sct#260371004 "Decreasing"
    * characteristic[+].definitionByCombination 
      * code = #all-of  
      * characteristic[condition][+]
        * definitionByTypeAndValue
          * type  = $sct#404684003 "Clinical finding (finding)"
          * valueCodeableConcept = $cs-cll#porecotr "Poor response to corticosteroid treatment"
      * characteristic[+].definitionByCombination 
        * code = #any-of
        * characteristic[condition][+] 
          * linkId = "CLL"
          * definitionByTypeAndValue
            * type  = $sct#404684003 "Clinical finding (finding)"
            * valueCodeableConcept = $sct#413603009 "Autoimmune hemolytic anemia"      
        * characteristic[condition][+] 
          * linkId = "CLL"
          * definitionByTypeAndValue
            * type  = $sct#404684003 "Clinical finding (finding)"
            * valueCodeableConcept = $sct#2897005 "Immune thrombocytopenia"  
    * characteristic[observation][+]
      * linkId = "CLL"
      * definitionByTypeAndValue
        * type  = $sct#404684003 "Clinical finding (finding)"
        * valueCodeableConcept = $cs-cll#sycasp "Symptom-causing splenomegaly"
    * characteristic[+].definitionByCombination 
      * code = #all-of  
      * characteristic[observation][+] 
        * linkId = "CLL"
        * definitionByTypeAndValue
          * type  = $sct#246120007 "Nodule size"
          * valueRange
            * low = 10 'cm'
      * characteristic[condition][+] 
        * linkId = "CLL"
        * definitionByTypeAndValue
          * type  = $sct#404684003 "Clinical finding (finding)"
          * valueCodeableConcept = $sct#30746006 "Lymphadenopathy"
    //
    * characteristic[+].definitionByCombination 
      * code = #all-of  
      * characteristic[observation][+] 
        * linkId = "CLL"
        * definitionByTypeAndValue
          * type  = $sct#246120007 "Nodule size"
          * valueCodeableConcept = $sct#260369004 "Increasing" 
      * characteristic[condition][+] 
        * linkId = "CLL"
        * definitionByTypeAndValue
          * type  = $sct#404684003 "Clinical finding (finding)"
          * valueCodeableConcept = $sct#30746006 "Lymphadenopathy"  
    * characteristic[observation][+]  
      * linkId = "CLL"
      * definitionByTypeAndValue
        * type = $loinc#26474-7 "Lymphocytes [#/volume] in Blood"
        * valueCodeableConcept = $cs-cll#ingrfiftyintwomo "Zunahme mehr als 50 Prozent innerhalb von 2 Monaten, gemessen ab einer absoluten Lymphozytenzahl von mindestens 30.000/µl"
    * characteristic[observation][+] 
      * linkId = "CLL"
      * definitionByTypeAndValue
        * type = $loinc#26474-7 "Lymphocytes [#/volume] in Blood"
        * valueCodeableConcept = $cs-cll#dopeunsixmo "Lymphozytenverdopplungszeit unter 6 Monaten, gemessen ab einer absoluten Lymphozytenzahl von mindestens 30.000/µl"
        