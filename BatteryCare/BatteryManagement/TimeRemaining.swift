//
//  TimeRemaining.swift
//  powermann
//
//  Created by Andre on 02.11.2023.
//

import Foundation

struct TimeRemaining {
    let minutes: Int?
    let state: BatteryState?

    var formatted: String {
        guard let minutesRemaining = minutes, let batteryState = state else {
            return NSLocalizedString("Time Remaining Updating", comment: "")
        }

        if batteryState == .chargedAndPlugged {
            return NSLocalizedString("Charged Notification Title", comment: "")
        }

        return String(format: "Time Remainig: %dh %02dm", arguments: [minutesRemaining / 60, minutesRemaining % 60])
    }
    
    var timeFormatted: String {
        guard let minutesRemaining = minutes, let batteryState = state else {
            return NSLocalizedString("Time Remaining Updating", comment: "")
        }

        if batteryState == .chargedAndPlugged {
            return NSLocalizedString("Charged Notification Title", comment: "")
        }

        return String(format: "%dh %02dm", arguments: [minutesRemaining / 60, minutesRemaining % 60])
    }
    
}
