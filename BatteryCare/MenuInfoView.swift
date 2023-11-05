//
//  MenuInfoView.swift
//
//  Created by Andre on 02.11.2023.
//

import SwiftUI

@available(OSX 11.0, *)
struct MenuInfoView: View {
    @StateObject private var model = MenuInfoViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .bottom, spacing: 120) {
                Text("Battery")
                    .font(.system(size: 13, weight: .semibold))
                Spacer()
                Text(model.percentage)
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
                    .multilineTextAlignment(.trailing)
            }
            .padding(.bottom, 3)
            
            HStack(alignment: .bottom, spacing: 2) {
                Text(model.powerSource)
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
            }
            .padding(.bottom, UserPreferences.hideBatteryInfo ? -3 : 3)
            
            if !UserPreferences.hideBatteryInfo {
                HStack(alignment: .top, spacing: 2) {
                    Text(model.remaining)
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                }
                .padding(.bottom, 3)
                
                HStack(alignment: .top, spacing: 2) {
                    Text(model.batteryTemperature)
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                }
                .padding(.bottom, 3)
                
                HStack(alignment: .top, spacing: 2) {
                    Text(model.batteryCondition)
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                }
                .padding(.bottom, 3)
                
                HStack(alignment: .top, spacing: 2) {
                    Text(model.cycleCount)
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                }
                .padding(.bottom, -3)
                
                
                
            }
        }
        .padding(.vertical, 7)
        .padding(.horizontal, 15)
    }
}

