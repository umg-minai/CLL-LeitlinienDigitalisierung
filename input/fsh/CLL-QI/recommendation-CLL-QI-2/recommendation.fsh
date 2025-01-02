/**********************************/
/*     Recommendation CLL-QI 2    */
/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecCollectionQIMutationsstatusVorTherapie
InstanceOf: recommendation
Usage: #definition
Title: "QI 2: Bestimmung TP53-Deletions- und TP53-/IGHV-Mutationsstatus vor erster systemischer CLL-Therapie (modifiziert 2024)"
Description: "Folgende Untersuchungsverfahren sollen vor Einleitung einer neuen Therapielinie zur Anwendung kommen: (I) Bestimmung des TP53-Deletions- und Mutationsstatus (FISH hinsichtlich del(17)(p13) und TP53-Mutationsanalyse); (II) Erhebung des IGHV-Mutationsstatus (sofern noch nicht bekannt)"
* name = "RecommendationCollection_QI_2"
* title = "QI 2: Bestimmung TP53-Deletions- und TP53-/IGHV-Mutationsstatus vor erster systemischer CLL-Therapie (modifiziert 2024)"
* date = "2024-07-08"
* status = #active
* description = "Folgende Untersuchungsverfahren sollen vor Einleitung einer neuen Therapielinie zur Anwendung kommen: (I) Bestimmung des TP53-Deletions- und Mutationsstatus (FISH hinsichtlich del(17)(p13) und TP53-Mutationsanalyse); (II) Erhebung des IGHV-Mutationsstatus (sofern noch nicht bekannt)"
//* insert canonical-url(covid19-inpatient-therapy, recommendation/therapeutic-anticoagulation) //?? Das stimmt ja bestimmt nicht : soll das die CLL_Website sein?
* insert publisher-experimental-version
* insert rs-combination-all
* action[+]
  * title = "QIMutationsstatusVorTherapie"
  * code = $cs-common-process#guideline-based-care
  * description = "QI 2: Bestimmung TP53-Deletions- und TP53-/IGHV-Mutationsstatus vor erster systemischer CLL-Therapie (modifiziert 2024)"
  * definitionCanonical = Canonical(QIMutationsstatusVorTherapie)
