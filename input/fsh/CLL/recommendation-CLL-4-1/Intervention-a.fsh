/************************/
/* Intervention Plans */
/************************/
Instance: CLLTherapieindikationBinetC
InstanceOf: recommendation-plan
Usage: #definition
Title: "CLL Therapieindikation Binet C"
Description: "Die Indikation zur Therapie besteht bei Übergang in Stadium Binet C"
//* insert canonical-url(covid19-inpatient-therapy, intervention-plan/antithrombotic-prophylaxis-LMWH)
* insert publisher-experimental-version
* name = "CLLTherapieindikationBinetC"
* title = "CLL Therapieindikation Binet C"
* description = "Die Indikation zur Therapie besteht bei Übergang in Stadium Binet C"
* date = "2023-05"
* status = #active
* subjectCanonical = Canonical(PopulationCLLBinetC)
* extension[partOf].valueCanonical = Canonical(RecCollectionTherapieplanungBinetCLL)
* insert rs-combination-all
* action[assessment][+]
  * definitionCanonical = Canonical(TherapieIndikationCLL)

Instance: CLLTherapieindikationBinetAB
InstanceOf: recommendation-plan
Usage: #definition
Title: "CLL Therapieindikation Binet A B"
Description: "Die Indikation zur Therapie in Abhängigkeit der Symptomatik wenn Binet A oder B vorliegt"
//* insert canonical-url(covid19-inpatient-therapy, intervention-plan/antithrombotic-prophylaxis-LMWH)
* insert publisher-experimental-version
* name = "CLLTherapieindikationBinetAB"
* title = "CLL Therapieindikation Binet A B"
* description = "Die Indikation zur Therapie in Abhängigkeit der Symptomatik wenn Binet A oder B vorliegt"
* date = "2023-05"
* status = #active
* subjectCanonical = Canonical(PopulationCLLBinetAB)
* extension[partOf].valueCanonical = Canonical(RecCollectionTherapieplanungBinetCLL)
* insert rs-combination-all
* action[other][+] // other slice erlaubt mehr freiheiten und hat weniger obligate felder
  * definitionCanonical = Canonical(TherapieIndikationCLL)
  // * code = $sct#432678004 "Indication for procedure" // ist vom Slice vorgegeben alternative Erstlinien Therapie

/**********************/
/* Recommended Actions */
/**********************/
Instance: TherapieIndikationCLL
InstanceOf: ActivityDefinition 
Usage: #definition
Title: "TherapieIndikationCLL"
Description: "Therapie Indikation bei CLL"
* name = "TherapieIndikationCLL"
* insert publisher-experimental-version
* status = #active
* description = "Therapie Indikation bei CLL"
* code = $cs-cll#scllt "Systemic CLL therapy"