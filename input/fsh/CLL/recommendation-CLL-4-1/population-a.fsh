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
    * characteristic[assessmentScale][+] // TODO @Gregor ich bekomme hier immer einen Fehler. Liegt das daran, dass hier die Schachtelung beginnt, oder die Binet Scale kein Teil der Assessmentcales in der Expansion ist?
      * definitionByTypeAndValue
        * type = $sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia"
        * valueCodeableConcept = $sct-uk#863741000000108 "Clinical stage A chronic lymphocytic leukaemia" 
    * characteristic[assessmentScale][+] 
      * definitionByTypeAndValue
        * type = $sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia"
        * valueCodeableConcept = $sct-uk#863761000000109 "Clinical stage B chronic lymphocytic leukaemia"
  * characteristic[+].definitionByCombination 
    * code = #any-of
    * characteristic[+].definitionByCombination 
      * code = #all-of
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
          * type = $loinc#26453-1 "Erythrocytes [#/volume] in Blood"
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
      * characteristic[drug-administration][+]  // das kann nicht richtig sein!
        * definitionByTypeAndValue
          * type  = $sct#404684003 "Drug"
          * valueCodeableConcept = $sct#304275008 "Corticosteroid and/or corticosteroid derivative"   
      * characteristic[condition][+]
        * definitionByTypeAndValue
          * type  = $sct#404684003 "Clinical finding (finding)"
          * valueCodeableConcept = $sct#405786003 "Poor response to treatment"
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
    * characteristic[+].definitionByCombination 
      * code = #all-of  
      * characteristic[observation][+] // TODO warten auf Gregors Anpassung 
        * linkId = "CLL"
        * definitionByTypeAndValue
          * type  = $loinc#32489-7 "Spleen tip distance below costal margin"
          * valueRange
            * low = 6 'cm'
      * characteristic[condition][+] 
        * linkId = "CLL"
        * definitionByTypeAndValue
          * type  = $sct#404684003 "Clinical finding (finding)"
          * valueCodeableConcept = $sct#830137004 "Pain due to enlargement of spleen"   
    * characteristic[observation][+] // TODO warten auf Gregors Anpassung 
      * linkId = "CLL"
      * definitionByTypeAndValue
        * type  = $loinc#32489-7 "Spleen tip distance below costal margin"
        * valueCodeableConcept = $sct#260369004 "Increasing"
    * characteristic[+].definitionByCombination 
      * code = #all-of  
      * characteristic[observation][+] // TODO warten auf Gregors Anpassung 
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
    * characteristic[+].definitionByCombination 
      * code = #all-of  
      * characteristic[observation][+] // TODO warten auf Gregors Anpassung 
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
        * type = $loinc#26515-7 "Lymphocytes [#/volume] in Blood"
        * valueCodeableConcept.text = "Zunahme >50% innerhalb von 2 Monaten,  gemessen ab einer absoluten Lymphozytenzahl von mindestens 30.000/µl" // TODO Ich gehe hier davon aus, dass die mindestLymphozytenzahl für beide Teile gilt
    * characteristic[observation][+] 
      * linkId = "CLL"
      * definitionByTypeAndValue
        * type = $loinc#26515-7 "Lymphocytes [#/volume] in Blood"
        * valueCodeableConcept.text = "Lymphozytenverdopplungszeit unter 6 Monaten, gemessen ab einer absoluten Lymphozytenzahl von mindestens 30.000/µl" // TODO Ich gehe hier davon aus, dass die mindestLymphozytenzahl für beide Teile gilt