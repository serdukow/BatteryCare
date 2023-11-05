//
//  MenuInfoViewModel.swift
//
//  Created by Andre on 02.11.2023.
//

import Foundation

@available(OSX 11.0, *)
class MenuInfoViewModel: ObservableObject {
    @Published var powerSource = NSLocalizedString("Power Source Updating", comment: "")
    @Published var percentage = NSLocalizedString("Percentage Updating", comment: "")
    @Published var remaining = NSLocalizedString("Time Remaining Updating", comment: "")
    @Published var cycleCount = NSLocalizedString("Cycle Count Updating", comment: "")
    @Published var batteryTemperature = NSLocalizedString("Battery Temperature Updating", comment: "")
    @Published var batteryCondition = NSLocalizedString("Battery Condition Updating", comment: "")

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
              let timeRemaining = batteryService?.timeRemaining,
              let batteryTemperature = batteryService?.temperature,
              let batteryCondiotion = batteryService?.health,
              let cycleCount = batteryService?.cycleCount,
              let powerSource = batteryService?.powerSource
        else {
            return
        }

        self.powerSource = powerSource.localizedDescription
        if UserPreferences.hideBatteryInfo{
            self.percentage = percentage.formatted
        } else {
            self.percentage = percentage.formatted
            self.cycleCount = cycleCount.CycleCountLocalizedDescription
            self.batteryTemperature = batteryTemperature.BatteryTempLocalizedDescription
            self.batteryCondition = batteryCondiotion.BatteryConditionLocalizedDescription
            self.remaining = timeRemaining.formatted
        }
    }
}
