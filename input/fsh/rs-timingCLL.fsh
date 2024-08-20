// Author: Viktor Bublitz @bublitzv
RuleSet: rs-timingCLL(count,period) //TODO ich hab das hier als Vorschlag, wenn inordnung: bei allen assessment actions umsetzen  :)
/* .repeat.periodUnit = $ucum#wk "week" */
* timing[extension].extension[relativeTime].extension[contextCode].valueCodeableConcept = $loinc#63936-9
* timing.extension[relativeTime].extension[offset].valueDuration = -{period} 'wk'