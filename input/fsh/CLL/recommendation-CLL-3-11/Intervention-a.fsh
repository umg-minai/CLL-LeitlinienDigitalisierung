I/*********************/
/* Intervention Plan */
/*********************/
Instance: UntersuchungenVorTherapieEinleitung
InstanceOf: recommendation-plan
Usage: #definition
Title: "Untersuchungen Vor Therapieeinleitung bei CLL Patienten"
Description: "Folgende Untersuchungsverfahren sollen zeitnah vor Einleitung einer neuen Therapielinie zur Anwendung kommen: (Anamnese; Körperliche Untersuchung mit vollständiger Erhebung des peripheren Lymphknotenstatus und Leber- und Milzgrößenabschätzung; Abdomensonographie; Bestimmung des ECOG Scores oder Karnofsky-Index; Bestimmung der Komorbidität; Maschinelles Blutbild; Mikroskopisches Differentialblutbild; Klinische Chemie; ß-HCG aus Blut/Urin bei Frauen im gebärfähigen Alter; Virusserologie (HBV, HCV, HEV, HIV); Bestimmung des aktuellen klinischen Stadiums; Vor geplanter Therapie mit Idelalisib: CMV IgG und IgM, dann auch regelmässige Kontrollen unter Therapie mit CMV-PCR indiziert"
//insert canonical-url(covid19-inpatient-therapy, intervention-plan/ventilation-plan)
//insert publisher-experimental-version(7.0)
* name = "Ventilation_Plan"
* title = "Ventilation parameters for COVID-19 patients with ARDS"
* version = "7.0"
* date = "2022-02"
* status = #active
* description = "In ventilated patients with COVID-19 and ARDS, tidal volume should be ≤ 6 ml/kg standard body weight, end-inspiratory airway pressure ≤ 30 cm H2O."
* subjectCanonical = Canonical(PopulationVentilatedCOVID19patientsWithARDS)
* extension[partOf].valueCanonical = Canonical(RecommendationCollectionVentilationCOVID19patientsWithARDS)
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "tidal-volume-goal"
  * description.text = "Tidal volume ≤ 6 ml/kg standard body weight"
  * target[+]
    * measure = $cs-codex-celida#tvpibw "Tidal volume / ideal body weight (ARDSnet)"
    * detailRange.high = 6 'ml/kg' "ml/kg"
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "end-inspiratory-pressure-goal"
  * description.text = "End-inspiratory airway pressure ≤ 30 cm H2O"
  * target[+]
    * measure = $loinc#76259-1 "Pressure.plateau Respiratory system airway --on ventilator"
    * detailRange.high = 30 'cm[H2O]' "cm[H2O]"
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "tidal-volume-goal"
  * goalId[+] = "end-inspiratory-pressure-goal"