/************************/
/* Intervention Plans */
/************************/
Instance: UntersuchungenVorCLLPlanungOnkoTherapie
InstanceOf: recommendation-plan
Usage: #definition
Title: "Untersuchung vor Einleitung einer CLL Therapielinie "
Description: "Untersuchung die vor der Einleitung einer CLL Therapielinie vorliegen sollen"
//* insert canonical-url(covid19-inpatient-therapy, intervention-plan/antithrombotic-prophylaxis-LMWH)
//* insert publisher-experimental-version(0.1)
* name = "UntersuchungenVorCLLPlanungOnkoTherapie"
* title = "Untersuchung vor Einleitung einer CLL Therapielinie "
* description = "Untersuchung die vor der Einleitung einer CLL Therapielinie vorliegen sollen"
* date = "2023-04"
* status = #active
* subjectCanonical = Canonical(PopulationCLLPlanungOnkoTherapie)
//* extension[partOf].valueCanonical = Canonical(RecCollectionProphAnticoagulationHospitalizedCOVID19Patients)
* insert rs-combination-all
* action[assessment][+]
  * definitionCanonical = Canonical(HistoryTakingCLL)
  * code = $sct#71388002 "Procedure" /*muss das die Concept Class sein oder das Hierarchisch höhere ITEM "is a" z.B. Examination of hemopoietic system  */
* action[assessment][+]
  * definitionCanonical = Canonical(PhysicalExaminationCLL)
  * code = $sct#71388002 "Procedure"
* action[assessment][+]
  * definitionCanonical = Canonical(ExaminationLymphaticNodesCLL)
  * code = $sct#71388002 "Procedure"
* action[assessment][+]
  * definitionCanonical = Canonical(ExaminationSpleenSizeCLL)
  * code = $sct#71388002 "Procedure"
* action[assessment][+]
  * definitionCanonical = Canonical(ExaminationLiverSizeCLL)
  * code = $sct#71388002 "Procedure"
* action[assessment][+]
  * definitionCanonical = Canonical(AbdomialUltrasonographyCLL)
  * code = $sct#71388002 "Procedure"
* action[combination][+]
  * insert rs-combination-one-or-more
  * action[assessment][+]
    * definitionCanonical = Canonical(AssessmentECOGScoreCLL)
    * code = $sct#363787002 "Observable entity (observable entity)"
  * action[assessment][+]
    * definitionCanonical = Canonical(AssessmentKarnofskyIndexCLL)
    * code = $sct#254291000 "Staging and scales (staging scale)"
* action[assessment][+]
  * definitionCanonical = Canonical(AssessmentComorbiditiesCLL)
  * code = $sct#404684003 "Clinical Finding"
* action[assessment][+]
  * definitionCanonical = Canonical(CompleteBloodCountAutomatedCLL)
  * code = $sct#71388002 "Procedure"
* action[assessment][+]
  * definitionCanonical = Canonical(MicroscopyWhiteBloodCellCountCLL)
  * code = $sct#71388002 "Procedure"
* action[assessment][+]
  * definitionCanonical = Canonical(ClinicalChemistryTestCLL)
  * code = $sct#71388002 "Procedure"
* action[assessment][+]
  * definitionCanonical = Canonical(HIVSerologyCLL)
  * code = $sct#71388002 "Procedure"
* action[assessment][+]
  * definitionCanonical = Canonical(HBVSerologyCLL)
  * code = $sct#71388002 "Procedure"
* action[assessment][+]
  * definitionCanonical = Canonical(HCVSerologyCLL)
  * code = $sct#71388002 "Procedure"
* action[assessment][+]
  * definitionCanonical = Canonical(HEVSerologyCLL)
  * code = $sct#71388002 "Procedure"
* action[assessment][+]
  * definitionCanonical = Canonical(BinetStagingCLL)
  * code = $sct#254291000 "Staging and scales (staging scale)"

/**********************/
/* Recommended Actions */
/**********************/
Instance: HistoryTakingCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "History Taking CLL"
Description: "Anamnese bei CLL Patienten"
 * name = "History Taking CLL"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * description = "Anamnese bei CLL Patienten"
 * code = $sct#84100007 "History taking"
 * timingTiming.code = #1491000175101 "Once as needed"  /*Sinnvoll?*/

Instance: PhysicalExaminationCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "Physical Examination CLL"
Description: "Körperliche Untersuchung bei CLL Patienten"
 * name = "Physical Examination CLL"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * description = "Körperliche Untersuchung bei CLL Patienten"
 * code = $sct#5880005 "Physical examination"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: ExaminationLymphaticNodesCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "Examination Lymphatic nodes CLL"
Description: "vollständiger Erhebung des peripheren Lymphknotenstatus"
 * name = "Examination lymph nodesCLL"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * description = "vollständiger Erhebung des peripheren Lymphknotenstatus"
 * code = $sct#284427004 "Examination of lymph nodes (procedure)"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: ExaminationSpleenSizeCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "Examination spleen size CLL"
Description: "Abschätzung der Milzgröße bei CLL"
 * name = "Examination spleen size CLL"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * description = "Abschätzung der Milzgröße bei CLL"
 * code = $sct#47241002 "Palpation of spleen (procedure)"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: ExaminationLiverSizeCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "Examination liver size CLL"
Description: "Abschätzung der Lebergröße bei CLL"
 * name = "Examination liver size CLL"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * description = "Abschätzung der Lebergröße bei CLL"
 * code = $sct#172488004 "Palpation of liver (procedure)"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: AbdomialUltrasonographyCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "Abdomial Ultrasonography CLL"
Description: "Abdomensonographie bei CLL"
 * name = "Abdomial Ultrasonography CLL"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * description = "Abdomensonographie bei CLL"
 * code = $sct#45036003 "Ultrasonography of abdomen"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: AssessmentECOGScoreCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "Assesment ECOG Score CLL"
Description: "Assesment of the ECOG Score CLL"
 * name = "Assesment ECOG Score CLL"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * description = "Assesment of the ECOG Score CLL"
 * code = $sct#423740007 "ECOG performance status"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: AssessmentKarnofskyIndexCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "Assesment Karnofsky-Index CLL"
Description: "Assesment Karnofsky-Index CLL"
 * name = "Assesment Karnofsky-Index CLL"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * description = "Assesment Karnofsky-Index CLL"
 * code = $sct#273546003 "Karnofsky performance status"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: AssessmentComorbiditiesCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "Assesment Comorbidities CLL"
Description: "Assesment Comorbidities CLL"
 * name = "Assesment Comorbidities CLL"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * description = "Assesment Comorbidities CLL"
 * code = $sct#398192003 "Co-morbid conditions (finding)"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: CompleteBloodCountAutomatedCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "Complete Blood Count and White cell Differential Automated CLL"
Description: "Maschinelles Differentialblutbild CLL"
 * name = "Complete Blood Count and White cell Differential Automated CLL"
 * description = "Maschinelles Differentialblutbild CLL"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * code = $sct#9564003 "Complete blood count with white cell differential, automated"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: MicroscopyWhiteBloodCellCountCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "White cell Differential Microscopy CLL"
Description: "Mikroskopisches Differentialblutbild"
 * name = "White cell Differential Microscopy CLL"
 * description = "Mikroskopisches Differentialblutbild"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * code = $sct#35774004 "Complete blood count with white cell differential, manual (procedure)"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: ClinicalChemistryTestCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "Clinical Chemistry Test CLL"
Description: "Klinische Chemie"
 * name = "Clinical Chemistry Test CLL"
 * description = "Klinische Chemie"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * code = $sct#275711006 "Serum chemistry test (procedure)"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: HIVSerologyCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "HIV Serology CLL"
Description: "HIV Serologie"
 * name = "HIV Serology CLL"
 * description = "HIV Serologie"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * code = $sct#171121004 "Human immunodeficiency virus screening (procedure)"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: HBVSerologyCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "HBV Serology CLL"
Description: "HBV Serologie"
 * name = "HBV Serology CLL"
 * description = "HBV Serologie"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * code = $sct#171122006 "Hepatitis B screening (procedure)"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: HCVSerologyCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "HCV Serology CLL"
Description: "HCV Serologie"
 * name = "HCV Serology CLL"
 * description = "HCV Serologie"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * code = $sct#413107006 "Hepatitis C screening (procedure)"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: HCVSerologyCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "HCV Serology CLL"
Description: "HCV Serologie"
 * name = "HCV Serology CLL"
 * description = "HCV Serologie"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * code = $sct#413107006 "Hepatitis C screening (procedure)"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: HEVSerologyCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "HEV Serology CLL"
Description: "HEV Serologie"
 * name = "HEV Serology CLL"
 * description = "HEV Serologie"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * code = $sct#36446003 "Hepatitis E virus measurement (procedure)"
 * timingTiming.code = #1491000175101 "Once as needed"

Instance: BinetStagingCLL
InstanceOf: assessment-action    /*Sinnvoll?*/
Usage: #definition
Title: "Binet Staging CLL"
Description: "Bestimmung des aktuellen klinischen Stadiums (Binet Staging) CLL"
 * name = "Binet Staging CLL"
 * description = "Bestimmung des aktuellen klinischen Stadiums (Binet Staging) CLL"
 //* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
 //* insert publisher-experimental-version(0.1)
 * status = #active
 * code = $sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia"
 * timingTiming.code = #1491000175101 "Once as needed"
/*
+Anamnese 
+&& Körperliche Untersuchung 
+&& vollständiger Erhebung des peripheren Lymphknotenstatus und Leber- und Milzgrößenabschätzung 
+&& Abdomensonographie 
+&& ( Bestimmung des ECOG Scores 
+|| Karnofsky-Index)
+&& Bestimmung der Komorbidität 
+&& Maschinelles Blutbild 
+&& Mikroskopisches Differentialblutbild 
+&& Klinische Chemie 
+&& Virusserologie (+HBV, +HCV, +HEV, +HIV) 
+&& Bestimmung des aktuellen klinischen Stadiums)*/