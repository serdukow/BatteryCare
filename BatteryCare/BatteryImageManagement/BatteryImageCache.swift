//
//  BatteryImageCache.swift
//  powermann
//
//  Created by Andre on 02.11.2023.
//

import Cocoa

struct BatteryImageCache {
    // MARK: Lifecycle

    /// Cache a battery icon alongside it's corresponding BatteryState.
    ///
    /// - parameter status: The BatteryState to cache the battery icon for.
    /// - parameter img: The battery icon to cache.
    init(forStatus status: BatteryState, withImage img: NSImage?) {
        batteryStatus = status
        image = img
    }

    // MARK: Internal

    /// The cached battery icon.
    let image: NSImage?
    /// The BatteryState associated with the cached battery icon.
    let batteryStatus: BatteryState
}
