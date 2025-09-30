//
//  SettingsView.swift
//  moneyFlow
//
//  Created by Martin Koudela on 24.09.2025.
//

import SwiftUI
struct SettingsView: View {
    @State private var changeTheme: Bool = false
    @Environment(\.colorScheme) private var scheme
    @AppStorage("userTheme") private var userTheme: Theme = .systemDefault
    var body: some View {
        NavigationStack {
            List {
                Section("Appearance") {
                    Button("Change theme") {
                        changeTheme.toggle()
                    }
                }
            }
        }
        .preferredColorScheme(userTheme.effectiveScheme(scheme))
        .sheet(isPresented: $changeTheme, content: {
            ThemeChangeView(scheme: scheme)
                .presentationDetents([.height(410)])
                .presentationBackground(.clear)
        })
        
    }
}
#Preview {
        SettingsView()
}
