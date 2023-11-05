//
//  StatusNotification.swift
//
//  Created by Andre on 02.11.2023.
//

import Foundation
import UserNotifications


/// Posts user notifications about the current charging status.
struct StatusNotification {
    // MARK: Lifecycle

    /// Initializes a new StatusNotification.
    ///
    /// - parameter key: The notification key which to display a user notification for.
    /// - returns: An optional StatusNotification; Return nil when the notificationKey
    ///            is invalid or nil.
    init?(forState state: BatteryState?) {
        guard let state = state, state != .chargedAndPlugged else {
            return nil
        }
        guard let key = NotificationKey(rawValue: state.percentage.numeric ?? 0), key != .invalid else {
            return nil
        }
        self.notificationKey = key
    }
    
    

    // MARK: Internal

    /// Present a notification for the current battery status to the user
    func postNotification() {
        if self.shouldPresentNotification() {
            
            let content = createUserNotification()
            let request = UNNotificationRequest(identifier: String(self.notificationKey.rawValue), content: content, trigger: nil)
            UNUserNotificationCenter.current().add(request) { (error) in
            UserPreferences.lastNotified = self.notificationKey
                
            }
        }
    }

    // MARK: Private

    /// The current notification's key.
    private let notificationKey: NotificationKey

    /// Check whether to present a notification to the user or not. Depending on the
    /// users preferences and whether the user already got notified about the current
    /// percentage.
    ///
    /// - returns: Whether to present a notification for the current battery percentage
    private func shouldPresentNotification() -> Bool {
        (self.notificationKey != UserPreferences.lastNotified
            && UserPreferences.notifications.contains(self.notificationKey))
    }
    
    
    
    /// Create a user notification for the current battery status
    ///
    /// - returns: The user notification to display
    private func createUserNotification() -> UNNotificationContent {
        
        let content = UNMutableNotificationContent()
        
        content.title = self.getNotificationTitle()
        content.body = self.getNotificationText()
        content.sound = UNNotificationSound.default
        
        return content
    }


    /// Get the corresponding notification title for the current battery state
    ///
    /// - returns: The notification title
    private func getNotificationTitle() -> String {
        if self.notificationKey == .twentyPercent {
            return NSLocalizedString("Low Battery Notification Title", comment: "")
        }
        else if self.notificationKey == .twentyTwoPercent {
            return NSLocalizedString("Low Battery Notification Title", comment: "")
        }
        else if self.notificationKey == .eightyPercent {
            return NSLocalizedString("Charged Notification Title", comment: "")
        }
        return String.localizedStringWithFormat(NSLocalizedString("Low Battery", comment: ""),
                                                self.formattedPercentage())
    }

    

    /// Get the corresponding notification text for the current battery state
    ///
    /// - returns: The notification text
    private func getNotificationText() -> String {
        if self.notificationKey == .twentyPercent {
            return NSLocalizedString("Low Battery Notification Message", comment: "")
        }
        else if self.notificationKey == .twentyTwoPercent {
            return NSLocalizedString("Battery Falls Message", comment: "")
        }
        else if self.notificationKey == .eightyPercent {
            return NSLocalizedString("Charged Notification Message", comment: "")
        }
        return NSLocalizedString("Low Battery Notification Message", comment: "")
    }

    /// The current percentage, formatted according to the selected client locale, e.g.
    /// en_US: 42% fr_FR: 42 %
    ///
    /// - returns: The localised percentage
    private func formattedPercentage() -> String {
        let percentageFormatter = NumberFormatter()
        percentageFormatter.numberStyle = .percent
        percentageFormatter.generatesDecimalNumbers = false
        percentageFormatter.localizesFormat = true
        percentageFormatter.multiplier = 1.0
        percentageFormatter.minimumFractionDigits = 0
        percentageFormatter.maximumFractionDigits = 0

        return percentageFormatter.string(from: self.notificationKey.rawValue as NSNumber)
            ?? "\(self.notificationKey.rawValue) %"
    }
}
