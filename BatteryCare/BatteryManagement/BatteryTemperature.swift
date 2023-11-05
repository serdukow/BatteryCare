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
        
        if temp > 35 {
            return "Battery Temperature: \(temp)°C 🔥"
        } else {
            return "Battery Temperature: \(temp)°C"
        }
    }
}
