// Author: Viktor Bublitz @bublitzv
RuleSet: rs-timingCLL(period) //TODO ich hab das hier als Vorschlag, wenn inordnung: bei allen assessment actions umsetzen  :)
* timingTiming.extension[relativeTime].extension[contextCode].valueCodeableConcept = $loinc#63936-9 //TODO wieso funktioniert das so noch nicht?!?
* timingTiming.extension[relativeTime].extension[offset].valueRange.low = -{period} 'wk'
* timingTiming.extension[relativeTime].extension[offset].valueRange.high = -0 'wk'
* timingTiming.repeat.count = 1