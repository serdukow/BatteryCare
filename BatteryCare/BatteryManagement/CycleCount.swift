//
//  CycleCount.swift
//  Battery Care
//
//  Created by Andre on 11.11.2023.
//

import Foundation

struct CycleCount {
    var numeric: Int?


    var CycleCountLocalizedDescription: String {
        guard let cycleCount = numeric else {
            return NSLocalizedString("Cycle Count Updating", comment: "")
        }

        return "Cycle Count: \(cycleCount) of 1000"
    }
}
