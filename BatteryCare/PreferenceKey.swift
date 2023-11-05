//
//  PreferenceKey.swift
//  powermann
//
//  Created by Andre on 02.11.2023.
//

/// Define constants to access the users preferences.
///
/// - showTime: Display time or percentage in the status bar.
/// - twentyPercentNotification: Notify the user at twenty percent remaining charge.
/// - twentyTwoPercentNotification: Notify the user at twenty percent remaining charge.
/// - hundredPercentNotification: Notify the user when the battery is fully charged.
/// - lastNotification: Store the percentage when we notified the user the last time.
enum PreferenceKey: String {
    case showTime = "ShowTimePref"
    case twentyPercentNotification = "TwentyPercentNotificationPref"
    case twentyTwoPercentNotification = "TwentyTwoPercentNotificationPref"
    case eightyPercentNotification = "EightyPercentNotificationPref"
    case lastNotification = "LastNotifiedPref"
    case hideMenubarInfo = "HideMenubarInfoPref"
    case hideBatteryIcon = "HideBatteryIconPref"
}
