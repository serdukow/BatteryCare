//
//  BatteryCondition.swift
//  Battery Care
//
//  Created by Andre on 12.11.2023.
//

import Foundation

struct BatteryCondition {
    var string: String?

    var BatteryConditionLocalizedDescription: String {
        guard let batteryCondition = string else {
            return NSLocalizedString("Battery Condition Updating", comment: "")
        }

        let localizedString: String

        switch batteryCondition {
        case "Good":
            localizedString = NSLocalizedString("Battery Condition Status Good", comment: "")
        case "Fair":
            localizedString = NSLocalizedString("Battery Condition Status Fair", comment: "")
        case "Service":
            localizedString = NSLocalizedString("Battery Condition Status Service", comment: "")
        // Add more cases as needed

        default:
            // Handle any other conditions or return the original string
            localizedString = batteryCondition
        }

        return localizedString
    }
}

