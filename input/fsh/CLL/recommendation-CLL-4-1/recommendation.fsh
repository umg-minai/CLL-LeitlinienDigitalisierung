/**********************************/
/*     Recommendation CLL 4.1     */
/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecCollectionTherapieplanungBinetCLL
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation Collection CLL: Therapieindikation nach Binet Stadium (4.1)"
Description: "Die Indikation zur Therapie besteht in Abhängigkeit der Symptomatik oder bei Übergang in Stadium Binet C"
* name = "RecommendationCollection4_1"
* title = "Recommendation Collection CLL: Therapieindikation nach Binet Stadium (4.1)"
* version = "1.0"
* date = "2024-05-06"
* status = #active
* description = "Die Indikation zur Therapie besteht in Abhängigkeit der Symptomatik oder bei Übergang in Stadium Binet C"
* insert canonical-url(covid19-inpatient-therapy, recommendation/therapeutic-anticoagulation) //?? Das stimmt ja bestimmt nicht : soll das die CLL_Website sein?
* experimental = true
* publisher = "Deutsche Krebsgesellschaft e.V."
* insert rs-combination-all
* action[+]
  * title = "CLLTherapieindikationBinetC"
  * code = $cs-common-process#guideline-based-care // TODO fehlt das woanders? 
  * description = "Die Indikation zur Therapie besteht bei Übergang in Stadium Binet C"
  * definitionCanonical = Canonical(CLLTherapieindikationBinetC)
* action[+]
  * title = "CLLTherapieindikationBinetAB"
  * code = $cs-common-process#guideline-based-care
  * description = "Die Indikation zur Therapie in Abhängigkeit der Symptomatik wenn Binet A oder B vorliegt"
  * definitionCanonical = Canonical(CLLTherapieindikationBinetAB)