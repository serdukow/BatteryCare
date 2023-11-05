//
//  MenuInfoViewModel.swift
//  powermann
//
//  Created by Andre on 02.11.2023.
//

import Foundation

@available(OSX 11.0, *)
class MenuInfoViewModel: ObservableObject {
    @Published var powerSource = NSLocalizedString("Unknown", comment: "")
    @Published var remaining = NSLocalizedString("Calculating", comment: "")
    @Published var cycleCount = "--"
    @Published var batteryTemperature = "--"

    private let batteryService: BatteryService?

    init() {
        do {
            batteryService = try BatteryService()
        } catch {
            batteryService = nil
        }

        update()

    NotificationCenter.default
            .addObserver(self,
                         selector: #selector(MenuInfoViewModel.powerSourceChanged(_:)),
                         name: NSNotification.Name(rawValue: powerSourceChangedNotification),
                         object: nil)
    }

    @objc public func powerSourceChanged(_: AnyObject) {
        update()
    }

    private func update() {
        guard let percentage = batteryService?.percentage,
              let batteryTemperature = batteryService?.temperature,
              let cycleCount = batteryService?.cycleCount,
              let powerSource = batteryService?.powerSource
        else {
            return
        }

        self.powerSource = powerSource.localizedDescription
        if UserPreferences.showTime {
            self.remaining = percentage.formatted
            self.cycleCount = cycleCount.description
            self.batteryTemperature = batteryTemperature.description
        } else {
            self.remaining = percentage.formatted
            self.cycleCount = cycleCount.description
            self.batteryTemperature = batteryTemperature.description
        }
    }
}
