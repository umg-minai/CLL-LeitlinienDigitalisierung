// Author: Viktor Bublitz @bublitzv
RuleSet: rs-timingCLL(period)
* timingTiming.extension[relativeTime].extension[contextCode].valueCodeableConcept = $loinc#63936-9 
* timingTiming.extension[relativeTime].extension[offset].valueRange.low = -{period} 'wk'
* timingTiming.extension[relativeTime].extension[offset].valueRange.high = -0 'wk'
* timingTiming.repeat.count = 1