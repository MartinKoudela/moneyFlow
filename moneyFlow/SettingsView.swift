//
//  SettingsView.swift
//  moneyFlow
//
//  Created by Martin Koudela on 24.09.2025.
//

import SwiftUI

struct SettingsView: View {
    @State private var colorScheme: ColorScheme = .light

    var body: some View {
            NavigationView {
                VStack {
                    Text("Themes")
                    Button("Toggle Scheme") {
                        self.colorScheme = (self.colorScheme == .light) ? .dark : .light
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .preferredColorScheme(colorScheme)
        }
    }

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
