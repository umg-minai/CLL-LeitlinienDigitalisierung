/************************/
/* Intervention Plans   */ 
/************************/
Instance: UntersuchungenVorCLLPlanungOnkoTherapie
InstanceOf: recommendation-plan
Usage: #definition
Title: "Untersuchung vor Einleitung einer CLL Therapielinie "
Description: "Untersuchung die vor der Einleitung einer CLL Therapielinie vorliegen sollen"
//* insert canonical-url(covid19-inpatient-therapy, intervention-plan/antithrombotic-prophylaxis-LMWH) // TODO Wenn wir fertig sind, gegeben wir den ordentliche URLS hierüber
* insert publisher-experimental-version
* name = "UntersuchungenVorCLLPlanungOnkoTherapie"
* title = "Untersuchung vor Einleitung einer CLL Therapielinie "
* description = "Untersuchung die vor der Einleitung einer CLL Therapielinie vorliegen sollen"
* date = "2023-05"
* status = #active
* subjectCanonical = Canonical(PopulationCLLPlanungOnkoTherapie)
* extension[partOf].valueCanonical = Canonical(RecCollectionUntersuchungenVorCLLPlanungOnkoTherapie)
* insert rs-combination-all
* action[assessment][+]
  * definitionCanonical = Canonical(HistoryTakingCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(PhysicalExaminationCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(ExaminationLymphaticNodesCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(ExaminationSpleenSizeCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(ExaminationLiverSizeCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(AbdomialUltrasonographyCLL)
* action[combination][+]
  * insert rs-combination-one-or-more
  * action[assessment][+]
    * definitionCanonical = Canonical(AssessmentECOGScoreCLL)
  * action[assessment][+]
    * definitionCanonical = Canonical(AssessmentKarnofskyIndexCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(AssessmentComorbiditiesCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(CompleteBloodCountAutomatedCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(MicroscopyWhiteBloodCellCountCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(ClinicalChemistryTestCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(HIVSerologyCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(HBVSerologyCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(HCVSerologyCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(HEVSerologyCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(BinetStagingCLL)

Instance: UntersuchungenVorPlanungOnkoTherapieFertileFemale
InstanceOf: recommendation-plan
Usage: #definition
Title: "Untersuchung vor Einleitung einer CLL Therapielinie bei gebährfähige Frauen"
Description: "Untersuchung die vor der Einleitung einer CLL Therapielinie CLL und Planung Onkologische Therapielinie gebährfähige Frauen vorliegen sollen"
* insert publisher-experimental-version
* name = "UntersuchungenVorPlanungOnkoTherapieFertileFemale"
* title = "Untersuchung vor Einleitung einer CLL Therapielinie bei gebährfähige Frauen"
* description = "Untersuchung die vor der Einleitung einer CLL Therapielinie CLL und Planung Onkologische Therapielinie gebährfähige Frauen vorliegen sollen"
* date = "2023-05"
* status = #active
* subjectCanonical = Canonical(PopulationCLLPlanungOnkoTherapieFertileFemale)
* extension[partOf].valueCanonical = Canonical(RecCollectionUntersuchungenVorCLLPlanungOnkoTherapie)
* insert rs-combination-all
* action[assessment][+]
  * definitionCanonical = Canonical(PregnancyTestbHCGCLL)
  
Instance: UntersuchungenVorPlanungOnkoTherapieIdelalisib
InstanceOf: recommendation-plan
Usage: #definition
Title: "Untersuchung vor Einleitung einer CLL Therapielinie mit Idelalisib"
Description: "Untersuchung die vor der Einleitung einer CLL Therapielinie CLL und Planung Onkologische Therapielinie mit Idelalisib vorliegen sollen"
* insert publisher-experimental-version
* name = "UntersuchungenVorPlanungOnkoTherapieIdelalisib"
* title = "Untersuchung vor Einleitung einer CLL Therapielinie bei gebaehrfähige Frauen"
* description = "Untersuchung die vor der Einleitung einer CLL Therapielinie CLL und Planung Onkologische Therapielinie mit Idelalisib vorliegen sollen"
* date = "2023-05"
* status = #active
* subjectCanonical = Canonical(PopulationCLLPlanungOnkoTherapieIdelalisib)
* extension[partOf].valueCanonical = Canonical(RecCollectionUntersuchungenVorCLLPlanungOnkoTherapie)
* insert rs-combination-all
* action[assessment][+]
  * definitionCanonical = Canonical(CMVAntibodyIgMCLL)
* action[assessment][+]
  * definitionCanonical = Canonical(CMVAntibodyIgGCLL)

Instance: UntersuchungenWhileTherapieIdelalisib
InstanceOf: recommendation-plan
Usage: #definition
Title: "Untersuchung waehrend CLL Therapielinie mit Idelalisib"
Description: "regelmäßige Untersuchung waehrend CLL Therapie mit Idelalisib"
* insert publisher-experimental-version
* name = "UntersuchungenWhileTherapieIdelalisib"
* title = "Untersuchung waehrend CLL Therapie mit Idelalisib"
* description = "regelmäßige Untersuchung waehrend CLL Therapie mit Idelalisib"
* date = "2023-05"
* status = #active
* subjectCanonical = Canonical(PopulationCLLOnkoTherapieIdelalisib)
* extension[partOf].valueCanonical = Canonical(RecCollectionUntersuchungenVorCLLPlanungOnkoTherapie)
* insert rs-combination-all
* action[assessment][+]
  * definitionCanonical = Canonical(CMVPCRCLL)

/**********************/
/* Recommended Actions */
/**********************/
Instance: HistoryTakingCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "History Taking CLL"
Description: "Anamnese bei CLL Patienten"
* name = "HistoryTakingCLL"
* insert publisher-experimental-version
* status = #active
* description = "Anamnese bei CLL Patienten"
* code = $sct#84100007 "History taking"
/* insert rs-timingCLL(1,4) */
* extension[relativeTime].extension[contextCode].valueCodeableConcept = $loinc#63936-9 //TODO wieso funktioniert das so noch nicht?
* extension[relativeTime].extension[offset].valueDuration = -4 'wk'

/*
Instance: PhysicalExaminationCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "Physical Examination CLL"
Description: "Körperliche Untersuchung bei CLL Patienten"
* name = "PhysicalExaminationCLL"
* insert publisher-experimental-version
* status = #active
* description = "Körperliche Untersuchung bei CLL Patienten"
* code = $sct#5880005 "Physical examination"
* insert rs-timingCLL(1,4)

Instance: ExaminationLymphaticNodesCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "Examination Lymphatic nodes CLL"
Description: "vollständiger Erhebung des peripheren Lymphknotenstatus"
* name = "ExaminationLymphaticNodesCLL"
* insert publisher-experimental-version
* status = #active
* description = "vollständiger Erhebung des peripheren Lymphknotenstatus"
* code = $sct#284427004 "Examination of lymph nodes (procedure)"
* insert rs-timingCLL(1,4)

Instance: ExaminationSpleenSizeCLL
InstanceOf: assessment-action  
Usage: #definition
Title: "Examination spleen size CLL"
Description: "Abschätzung der Milzgröße bei CLL"
* name = "ExaminationSpleenSizeCLL"
* insert publisher-experimental-version
* status = #active
* description = "Abschätzung der Milzgröße bei CLL"
* code = $sct#47241002 "Palpation of spleen (procedure)"
* insert rs-timingCLL(1,4)

Instance: ExaminationLiverSizeCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "Examination liver size CLL"
Description: "Abschätzung der Lebergröße bei CLL"
* name = "ExaminationLiverSizeCLL"
* insert publisher-experimental-version
* status = #active
* description = "Abschätzung der Lebergröße bei CLL"
* code = $sct#172488004 "Palpation of liver (procedure)"
* insert rs-timingCLL(1,4)

Instance: AbdomialUltrasonographyCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "Abdomial Ultrasonography CLL"
Description: "Abdomensonographie bei CLL"
* name = "AbdomialUltrasonographyCLL"
* insert publisher-experimental-version
* status = #active
* description = "Abdomensonographie bei CLL"
* code = $sct#45036003 "Ultrasonography of abdomen"
* insert rs-timingCLL(1,4)

Instance: AssessmentECOGScoreCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "Assesment ECOG Score CLL"
Description: "Assesment of the ECOG Score CLL"
* name = "AssesmentECOGScoreCLL"
* insert publisher-experimental-version
* status = #active
* description = "Assesment of the ECOG Score CLL"
* code = $sct#423740007 "ECOG performance status"
* insert rs-timingCLL(1,4)

Instance: AssessmentKarnofskyIndexCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "Assesment Karnofsky-Index CLL"
Description: "Assesment Karnofsky-Index CLL"
* name = "AssesmentKarnofskyIndexCLL"
* insert publisher-experimental-version
* status = #active
* description = "Assesment Karnofsky-Index CLL"
* code = $sct#273546003 "Karnofsky performance status"
* insert rs-timingCLL(1,4)

Instance: AssessmentComorbiditiesCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "Assesment Comorbidities CLL"
Description: "Assesment Comorbidities CLL"
* name = "AssesmentComorbiditiesCLL"
* insert publisher-experimental-version
* status = #active
* description = "Assesment Comorbidities CLL"
* code = $sct#398192003 "Co-morbid conditions (finding)"
* insert rs-timingCLL(1,4)

Instance: CompleteBloodCountAutomatedCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "Complete Blood Count and White cell Differential Automated CLL"
Description: "Maschinelles Differentialblutbild CLL"
* name = "CompleteBloodCountAutomatedCLL"
* description = "Maschinelles Differentialblutbild CLL"
* insert publisher-experimental-version
* status = #active
* code = $sct#9564003 "Complete blood count with white cell differential, automated"
* insert rs-timingCLL(1,4)

Instance: MicroscopyWhiteBloodCellCountCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "White cell Differential Microscopy CLL"
Description: "Mikroskopisches Differentialblutbild"
* name = "MicroscopyWhiteBloodCellCountCLL"
* description = "Mikroskopisches Differentialblutbild"
* insert publisher-experimental-version
* status = #active
* code = $sct#35774004 "Complete blood count with white cell differential, manual (procedure)"
* insert rs-timingCLL(1,4)

Instance: ClinicalChemistryTestCLL
InstanceOf: assessment-action
Usage: #definition
Title: "Clinical Chemistry Test CLL"
Description: "Klinische Chemie"
* name = "ClinicalChemistryTestCLL"
* description = "Klinische Chemie"
* insert publisher-experimental-version
* status = #active
* code = $sct#275711006 "Serum chemistry test (procedure)"
* insert rs-timingCLL(1,4)

Instance: HIVSerologyCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "HIV Serology CLL"
Description: "HIV Serologie"
* name = "HIVSerologyCLL"
* description = "HIV Serologie"
* insert publisher-experimental-version
* status = #active
* code = $sct#171121004 "Human immunodeficiency virus screening (procedure)"
* insert rs-timingCLL(1,4)

Instance: HBVSerologyCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "HBV Serology CLL"
Description: "HBV Serologie"
* name = "HBVSerologyCLL"
* description = "HBV Serologie"
* insert publisher-experimental-version
* status = #active
* code = $sct#171122006 "Hepatitis B screening (procedure)"
* insert rs-timingCLL(1,4)

Instance: HCVSerologyCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "HCV Serology CLL"
Description: "HCV Serologie"
* name = "HCVSerologyCLL"
* description = "HCV Serologie"
* insert publisher-experimental-version
* status = #active
* code = $sct#413107006 "Hepatitis C screening (procedure)"
* insert rs-timingCLL(1,4)

Instance: HEVSerologyCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "HEV Serology CLL"
Description: "HEV Serologie"
* name = "HEVSerologyCLL"
* description = "HEV Serologie"
* insert publisher-experimental-version
* status = #active
* code = $sct#36446003 "Hepatitis E virus measurement (procedure)"
* insert rs-timingCLL(1,4)

Instance: BinetStagingCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "Binet Staging CLL"
Description: "Bestimmung des aktuellen klinischen Stadiums (Binet Staging) CLL"
* name = "BinetStagingCLL"
* description = "Bestimmung des aktuellen klinischen Stadiums (Binet Staging) CLL"
* insert publisher-experimental-version
* status = #active
* code = $sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia"
* insert rs-timingCLL(1,4)

Instance: PregnancyTestbHCGCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "Pregnancy Test betaHCG CLL"
Description: "Pregnancy Test betaHCG CLL"
* name = "PregnancyTestbHCGCLL"
* description = "Schwangerschaftstest betaHCG CLL"
* insert publisher-experimental-version
* status = #active
* code = $sct#44789311 "Pregnancy test (beta human chorionic gonadotropin) (procedure)"
* insert rs-timingCLL(1,4)



Instance: CMVAntibodyIgGCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "CMV IgG Antibody CLL"
Description: "CMV IgG Antikörper Bestimmung"
* name = "CMVAntibodyIgGCLL"
* description = "CMV IgG Antikörper Bestimmung"
* insert publisher-experimental-version
* status = #active
* code = $sct#64681000237105 "CMV (cytomegalovirus) IgG antibody in serum qualitative result"
* insert rs-timingCLL(1,4)

Instance: CMVAntibodyIgMCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "CMV IgM Antibody CLL"
Description: "CMV IgM Antikörper Bestimmung"
* name = "CMVAntibodyIgMCLL"
* description = "CMV IgM Antikörper Bestimmung"
* insert publisher-experimental-version
* status = #active
* code = $sct#62681000237103 "CMV (cytomegalovirus) IgM antibody in serum qualitative result"
* insert rs-timingCLL(1,4)

Instance: CMVPCRCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "CMV PCR CLL"
Description: "CMV PCR Viruslast Bestimmung"
* name = "CMVPCRCLL"
* description = "CMV PCR Viruslast Bestimmung"
* insert publisher-experimental-version
* status = #active
* code = $sct#1107381000000101 "Cytomegalovirus viral load"
* timingTiming.repeat
  * frequency = 1
  * period = 2 
  * periodUnit = $ucum#wk "week" 
*/