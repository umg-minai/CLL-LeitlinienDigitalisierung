// the use of an alias is a workaround for an error otherwise thrown in sushi 3.0.0
Alias: $cs-cll = https://www.netzwerk-universitaetsmedizin.de/fhir/codex-celida/CodeSystem/codex-celida //TODO - welche Adresse? entweder Greifswald oder die CLLs haben eine Host URL

CodeSystem: CLL_V2
Id: cll-v2
Title: "CLL_V2"
Description: "Concepts required in recommendations that are not defined elsewhere"
* ^url = $cs-cll
* #dprnt    "Disease progression that requires adapted or new treatment"
* #dprnti   "Disease progression that requires adapted or new treatment with idelalisib" 
* #scllt    "Systemic CLL therapy"
* #porecotr "Poor response to corticosteroid treatment"
* #sycasp   "Symptom-causing splenomegaly"
* #cllrete  "CLL Relapse therapy"
* #ingrfiftyintwomo "Zunahme mehr als 50 Prozent innerhalb von 2 Monaten, gemessen ab einer absoluten Lymphozytenzahl von mindestens 30.000/µl"
* #dopeunsixmo "Lymphozytenverdopplungszeit unter 6 Monaten, gemessen ab einer absoluten Lymphozytenzahl von mindestens 30.000/µl"