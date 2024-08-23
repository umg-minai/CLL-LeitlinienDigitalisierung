// Author: Viktor Bublitz @bublitzv
RuleSet: rs-timingCLL(period) //TODO ich hab das hier als Vorschlag, wenn inordnung: bei allen assessment actions umsetzen  :)
* extension[relativeTime].extension[contextCode].valueCodeableConcept = $loinc#63936-9 //TODO wieso funktioniert das so noch nicht?!?
* extension[relativeTime].extension[offset].valueRange.low = -{period} 'wk'
* extension[relativeTime].extension[offset].valueRange.high = -0 'wk'