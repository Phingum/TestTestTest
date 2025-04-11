//
//  SettingsView.swift
//  Playground
//
//  Created by Kenneth B. Jørgensen on 08/04/2025.
//

import SwiftUI

enum AppColorScheme: String, CaseIterable, Identifiable {
    case system = "System"
    case light = "Light"
    case dark = "Dark"
    
    var id: String { rawValue }
    
    var colorScheme: ColorScheme? {
        switch self {
        case .system: return nil
        case .light: return .light
        case .dark: return .dark
        }
    }
}



struct SettingsView: View {
    
    @AppStorage("selectedAppearance") private var selectedAppearance: String = AppColorScheme.system.rawValue

    // Fetching the version number from the Info.plist
    let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "Unknown"
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Appearance")) {
                    Picker("Theme", selection: $selectedAppearance) {
                        ForEach(AppColorScheme.allCases) { mode in
                            Text(mode.rawValue).tag(mode.rawValue)
                        }
                    }
                }
                Section(header: Text("About")) {
                    Text("Version \(version)") // Display the version
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
