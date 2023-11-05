//
//  PreferenceKey.swift
//
//  Created by Andre on 02.11.2023.
//
/// - showTime: Shows Time Remaining.
/// - hidePercentage: Hide Bar Percentage and Show Time Remaining.
/// - hideBatteryIcon: Hide Battery icon and Show Percentage Only.
/// - hideBatteryInfo: Hide All Battery info, like temp, condition, cycle count etc..
/// - twentyPercentNotification: Notify the user at twenty percent remaining charge.
/// - twentyTwoPercentNotification: Notify the user at twenty percent remaining charge.
/// - eightyPercentNotification: Notify the user when the battery is fully charged.
/// - lastNotification: Store the percentage when we notified the user the last time.
enum PreferenceKey: String {
    case showTime = "ShowTimePref"
    case twentyPercentNotification = "TwentyPercentNotificationPref"
    case twentyTwoPercentNotification = "TwentyTwoPercentNotificationPref"
    case eightyPercentNotification = "EightyPercentNotificationPref"
    case lastNotification = "LastNotifiedPref"
    case hidePercentage = "HidePercentagePref"
    case hideBatteryIcon = "HideBatteryIconPref"
    case hideBatteryInfo = "HideBatteryInfoPref"
}
