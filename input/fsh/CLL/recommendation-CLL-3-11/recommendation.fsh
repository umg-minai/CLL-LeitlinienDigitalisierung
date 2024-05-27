/**********************************/
/*     Recommendation CLL 3.11    */
/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecCollectionUntersuchungenVorCLLPlanungOnkoTherapie
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation Collection CLL: Untersuchungen vor Therapieeinleitung (3.11)"
Description: "Folgende Untersuchungsverfahren sollen zeitnah vor Einleitung einer neuen Therapielinie zur Anwendung kommen:"
* name = "RecommendationCollection3_11"
* title = "Recommendation Collection CLL: Untersuchungen vor Therapieeinleitung (3.11)"
* date = "2024-05-06"
* status = #active
* description = "Untersuchungen, die vor Planung einer onkologischen Therapielinie vorhanden sein sollen (mit Spezifizierungen für gebährfähige Frauen und Therapieschemata mit Idelalisib)"
//* insert canonical-url(covid19-inpatient-therapy, recommendation/therapeutic-anticoagulation) //?? Das stimmt ja bestimmt nicht : soll das die CLL_Website sein?
* insert publisher-experimental-version
* insert rs-combination-all
* action[+]
  * title = "UntersuchungenVorCLLPlanungOnkoTherapie"
  * code = $cs-common-process#guideline-based-care
  * description = "Untersuchungen, die bei allen CLL-Patienten vor Planung einer onkologischen Therapielinie vorhanden sein sollen"
  * definitionCanonical = Canonical(UntersuchungenVorCLLPlanungOnkoTherapie)
* action[+]
  * title = "UntersuchungenVorPlanungOnkoTherapieFertileFemale"
  * code = $cs-common-process#guideline-based-care
  * description = "Untersuchungen, die bei gebährfähigen CLL-Patienten vor Planung einer onkologischen Therapielinie vorhanden sein sollen"
  * definitionCanonical = Canonical(UntersuchungenVorPlanungOnkoTherapieFertileFemale)
* action[+]
  * title = "UntersuchungenVorPlanungOnkoTherapieIdelalisib"
  * code = $cs-common-process#guideline-based-care
  * description = "Untersuchungen, die bei allen CLL-Patienten vor Planung einer onkologischen Therapielinie mit Idelalisib vorhanden sein sollen"
  * definitionCanonical = Canonical(UntersuchungenVorPlanungOnkoTherapieIdelalisib)
* action[+]
  * title = "UntersuchungenWhileTherapieIdelalisib"
  * code = $cs-common-process#guideline-based-care
  * description = "Untersuchungen, die bei allen CLL-Patienten während der Therapie mit Idelalisib"
  * definitionCanonical = Canonical(UntersuchungenVorPlanungOnkoTherapieIdelalisib)
