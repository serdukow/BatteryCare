//
//  NotificationKey.swift
//
//  Created by Andre on 02.11.2023.
//

/// Defines a notification at a given percentage.
///
/// - invalid: Not a valid notification percentage.
/// - twentyPercent: Notify the user at twenty percent remaining charge.
/// - twentyTwoPercent: Notify the user at twenty two percent remaining charge.
/// - eightyPercent: Notify the user at twenty eighty remaining charge.
enum NotificationKey: Int {
    case invalid = 0
    case twentyPercent = 20
    case twentyTwoPercent = 22
    case eightyPercent = 80
}
