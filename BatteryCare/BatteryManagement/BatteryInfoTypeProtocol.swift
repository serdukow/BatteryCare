//
//  BatteryInfoTypeProtocol.swift
//  powermann
//
//  Created by Andre on 02.11.2023.
//

import Foundation

@objc protocol BatteryInfoTypeProtocol {
    var title: String { get }
    var value: String { get }
}
