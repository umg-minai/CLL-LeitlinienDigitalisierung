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
* version = "1.0"
* date = "2024-05-06"
* status = #active
* description = "Untersuchungen, die vor Planung einer onkologischen Therapielinie vorhanden sein sollen (mit Spezifizierungen für gebährfähige Frauen und Therapieschemata mit Idelalisib)"
* insert canonical-url(covid19-inpatient-therapy, recommendation/therapeutic-anticoagulation) //?? Das stimmt ja bestimmt nicht : soll das die CLL_Website sein?
* experimental = true
* publisher = "Deutsche Krebsgesellschaft e.V."
* insert rs-combination-all
* action[+]
  * title = "UntersuchungenVorCLLPlanungOnkoTherapie"
  * code = $cs-common-process#guideline-based-care // ist das richtig??
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

  // Bei Allen:  (Anamnese; Körperliche Untersuchung mit vollständiger Erhebung des peripheren Lymphknotenstatus und Leber- und Milzgrößenabschätzung; Abdomensonographie; Bestimmung des ECOG Scores oder Karnofsky-Index; Bestimmung der Komorbidität; Maschinelles Blutbild; Mikroskopisches Differentialblutbild; Klinische Chemie;  Virusserologie (HBV, HCV, HEV, HIV); Bestimmung des aktuellen klinischen Stadiums; 
  // Bei Frauen im gebärfähigen Alter: ß-HCG aus Blut/Urin
  // Vor geplanter Therapie mit Idelalisib: CMV IgG und IgM, dann auch regelmässige Kontrollen unter Therapie mit CMV-PCR indiziert