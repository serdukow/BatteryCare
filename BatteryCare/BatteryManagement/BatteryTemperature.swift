//
//  BatteryTemperature.swift
//  Battery Care
//
//  Created by Andre on 11.11.2023.
//

import Foundation

struct BatteryTemperature {
    var numeric: Double?
    
    
    var BatteryTempLocalizedDescription: String {
        guard let temperature = numeric else {
            return NSLocalizedString("Battery Temperature Updating", comment: "")
        }
        
        let temp = round(temperature / 100)
        
        let localizedStringFormat = NSLocalizedString("Battery Temperature", comment: "")
        
        if temp > 35 {
            return String(format: localizedStringFormat + " 🔥", temp)
        } else {
            return String(format: localizedStringFormat, temp)
        }
    }
}
