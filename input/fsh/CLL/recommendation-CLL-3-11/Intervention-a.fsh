/************************/
/* Intervention Plans */
/************************/
Instance: UntersuchungenVorCLLPlanungOnkoTherapie
InstanceOf: recommendation-plan
Usage: #definition
Title: "Untersuchung vor Einleitung einer CLL Therapielinie "
Description: "Untersuchung die vor der Einleitung einer CLL Therapielinie vorliegen sollen"
//* insert canonical-url(covid19-inpatient-therapy, intervention-plan/antithrombotic-prophylaxis-LMWH) // TODO Wenn wir fertig sind, gegeben wir den ordentliche URLS hierüber
* insert publisher-experimental-version // TODO Richtige Version? Leitlinienversion? sonst 1.0 // 
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
* experimental = false //Stimmt das?
* insert publisher-experimental-version
* status = #active
* description = "Anamnese bei CLL Patienten"
* code = $sct#84100007 "History taking"
* timingTiming.repeat.count = 1

Instance: PhysicalExaminationCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "Physical Examination CLL"
Description: "Körperliche Untersuchung bei CLL Patienten"
* name = "PhysicalExaminationCLL"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* description = "Körperliche Untersuchung bei CLL Patienten"
* code = $sct#5880005 "Physical examination"
* timingTiming.repeat.count = 1

Instance: ExaminationLymphaticNodesCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "Examination Lymphatic nodes CLL"
Description: "vollständiger Erhebung des peripheren Lymphknotenstatus"
* name = "ExaminationLymphaticNodesCLL"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* description = "vollständiger Erhebung des peripheren Lymphknotenstatus"
* code = $sct#284427004 "Examination of lymph nodes (procedure)"
* timingTiming.repeat.count = 1

Instance: ExaminationSpleenSizeCLL
InstanceOf: assessment-action  
Usage: #definition
Title: "Examination spleen size CLL"
Description: "Abschätzung der Milzgröße bei CLL"
* name = "ExaminationSpleenSizeCLL"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* description = "Abschätzung der Milzgröße bei CLL"
* code = $sct#47241002 "Palpation of spleen (procedure)"
* timingTiming.repeat.count = 1

Instance: ExaminationLiverSizeCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "Examination liver size CLL"
Description: "Abschätzung der Lebergröße bei CLL"
* name = "ExaminationLiverSizeCLL"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* description = "Abschätzung der Lebergröße bei CLL"
* code = $sct#172488004 "Palpation of liver (procedure)"
* timingTiming.repeat.count = 1

Instance: AbdomialUltrasonographyCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "Abdomial Ultrasonography CLL"
Description: "Abdomensonographie bei CLL"
* name = "AbdomialUltrasonographyCLL"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* description = "Abdomensonographie bei CLL"
* code = $sct#45036003 "Ultrasonography of abdomen"
* timingTiming.repeat.count = 1

Instance: AssessmentECOGScoreCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "Assesment ECOG Score CLL"
Description: "Assesment of the ECOG Score CLL"
* name = "AssesmentECOGScoreCLL"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* description = "Assesment of the ECOG Score CLL"
* code = $sct#423740007 "ECOG performance status"
* timingTiming.repeat.count = 1

Instance: AssessmentKarnofskyIndexCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "Assesment Karnofsky-Index CLL"
Description: "Assesment Karnofsky-Index CLL"
* name = "AssesmentKarnofskyIndexCLL"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* description = "Assesment Karnofsky-Index CLL"
* code = $sct#273546003 "Karnofsky performance status"
* timingTiming.repeat.count = 1

Instance: AssessmentComorbiditiesCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "Assesment Comorbidities CLL"
Description: "Assesment Comorbidities CLL"
* name = "AssesmentComorbiditiesCLL"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* description = "Assesment Comorbidities CLL"
* code = $sct#398192003 "Co-morbid conditions (finding)"
* timingTiming.repeat.count = 1

Instance: CompleteBloodCountAutomatedCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "Complete Blood Count and White cell Differential Automated CLL"
Description: "Maschinelles Differentialblutbild CLL"
* name = "CompleteBloodCountAutomatedCLL"
* description = "Maschinelles Differentialblutbild CLL"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#9564003 "Complete blood count with white cell differential, automated"
* timingTiming.repeat.count = 1

Instance: MicroscopyWhiteBloodCellCountCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "White cell Differential Microscopy CLL"
Description: "Mikroskopisches Differentialblutbild"
* name = "MicroscopyWhiteBloodCellCountCLL"
* description = "Mikroskopisches Differentialblutbild"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#35774004 "Complete blood count with white cell differential, manual (procedure)"
* timingTiming.repeat.count = 1

Instance: ClinicalChemistryTestCLL
InstanceOf: assessment-action
Usage: #definition
Title: "Clinical Chemistry Test CLL"
Description: "Klinische Chemie"
* name = "ClinicalChemistryTestCLL"
* description = "Klinische Chemie"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#275711006 "Serum chemistry test (procedure)"
* timingTiming.repeat.count = 1

Instance: HIVSerologyCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "HIV Serology CLL"
Description: "HIV Serologie"
* name = "HIVSerologyCLL"
* description = "HIV Serologie"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#171121004 "Human immunodeficiency virus screening (procedure)"
* timingTiming.repeat.count = 1

Instance: HBVSerologyCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "HBV Serology CLL"
Description: "HBV Serologie"
* name = "HBVSerologyCLL"
* description = "HBV Serologie"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#171122006 "Hepatitis B screening (procedure)"
* timingTiming.repeat.count = 1

Instance: HCVSerologyCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "HCV Serology CLL"
Description: "HCV Serologie"
* name = "HCVSerologyCLL"
* description = "HCV Serologie"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#413107006 "Hepatitis C screening (procedure)"
* timingTiming.repeat.count = 1

Instance: HEVSerologyCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "HEV Serology CLL"
Description: "HEV Serologie"
* name = "HEVSerologyCLL"
* description = "HEV Serologie"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#36446003 "Hepatitis E virus measurement (procedure)"
* timingTiming.repeat.count = 1

Instance: BinetStagingCLL
InstanceOf: assessment-action    
Usage: #definition
Title: "Binet Staging CLL"
Description: "Bestimmung des aktuellen klinischen Stadiums (Binet Staging) CLL"
* name = "BinetStagingCLL"
* description = "Bestimmung des aktuellen klinischen Stadiums (Binet Staging) CLL"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#1149099005 "Binet staging classification for chronic lymphocytic leukemia"
* timingTiming.repeat.count = 1

Instance: PregnancyTestbHCGCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "Pregnancy Test betaHCG CLL"
Description: "Pregnancy Test betaHCG CLL"
* name = "PregnancyTestbHCGCLL"
* description = "Schwangerschaftstest betaHCG CLL"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#44789311 "Pregnancy test (beta human chorionic gonadotropin) (procedure)"
* timingTiming.repeat.count = 1



Instance: CMVAntibodyIgGCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "CMV IgG Antibody CLL"
Description: "CMV IgG Antikörper Bestimmung"
* name = "CMVAntibodyIgGCLL"
* description = "CMV IgG Antikörper Bestimmung"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#64681000237105 "CMV (cytomegalovirus) IgG antibody in serum qualitative result"
* timingTiming.repeat.count = 1

Instance: CMVAntibodyIgMCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "CMV IgM Antibody CLL"
Description: "CMV IgM Antikörper Bestimmung"
* name = "CMVAntibodyIgMCLL"
* description = "CMV IgM Antikörper Bestimmung"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#62681000237103 "CMV (cytomegalovirus) IgM antibody in serum qualitative result"
* timingTiming.repeat.count = 1

Instance: CMVPCRCLL
InstanceOf: assessment-action   
Usage: #definition
Title: "CMV PCR CLL"
Description: "CMV PCR Viruslast Bestimmung"
* name = "CMVPCRCLL"
* description = "CMV PCR Viruslast Bestimmung"
* experimental = true
* publisher = "https://www.leitlinienprogramm-onkologie.de/leitlinien/chronische-lymphatische-leukaemie-cll"
* version = "Langversion 2.01 (01.10.2023) AWMF Reg.-Nr: 018-032OL"
* status = #active
* code = $sct#1107381000000101 "Cytomegalovirus viral load"
* timingTiming.repeat
  * frequency = 1
  * period = 30 // bisher nicht klar nur "regelmäßig"
  * periodUnit = $ucum#d "day" 
