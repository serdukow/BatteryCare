//
//  PowerSource.swift
//  powermann
//
//  Created by Andre on 02.11.2023.
//

import Foundation

enum PowerSource: String {
    case unknown = "Unknown"
    case powerAdapter = "Power Adapter"
    case battery = "Battery"

    var localizedDescription: String {
        return NSLocalizedString("Power Source: \(self.rawValue)", comment: "")
    }
}

