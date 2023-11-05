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
        guard let BatteryCondition = string else {
            return NSLocalizedString("Battery Condition Updating", comment: "")
        }

        return "Battery Condition: \(BatteryCondition)"
    }
}
