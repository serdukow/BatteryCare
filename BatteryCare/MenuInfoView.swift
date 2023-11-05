//
//  MenuInfoView.swift
//  powermann
//
//  Created by Andre on 02.11.2023.
//

import SwiftUI

@available(OSX 11.0, *)
struct MenuInfoView: View {
    @StateObject private var model = MenuInfoViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .bottom, spacing: 85) {
                Text("Battery")
                    .font(.system(size: 13, weight: .semibold))
                Spacer()
                Text(model.remaining)
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
                    .multilineTextAlignment(.trailing)
                    
            }
            .padding(.bottom, 3)
            
            
            HStack(alignment: .bottom, spacing: 2) {
                Text("Power Source:")
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
                Text(model.powerSource)
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
            }
            .padding(.bottom, 3)
            
            HStack(alignment: .top, spacing: 2) {
                Text("Battery Temperature:")
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
                Text(model.batteryTemperature)
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
                Text("°C")
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
            }.padding(.bottom, 3)
            
            HStack(alignment: .top, spacing: 2) {
                Text("Cycle Count:")
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
                Text(model.cycleCount)
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
                Text("of 1000")
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
                
            }
            
        }
        .padding(.vertical, 7)
        .padding(.horizontal, 15)
    }
}
