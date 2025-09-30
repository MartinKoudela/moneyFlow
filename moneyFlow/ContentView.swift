//
//  ContentView.swift
//  moneyFlow
//
//  Created by Martin Koudela on 24.09.2025.
//

import SwiftUI
struct ContentView: View {
    @State private var changeTheme: Bool = false
    @AppStorage("userTheme") private var userTheme: Theme = .systemDefault
    @State private var showOnboarding:Bool = true
    var body: some View {
        VStack {
            TabView {
                Group {
                    NavigationStack {
                        HomeView()
                            .navigationTitle("Home")
                    }
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                            .toolbarBackground(.yellow, for: .navigationBar)
                            .toolbarBackground(.visible, for: .navigationBar)
                    }
                    
                    NavigationStack {
                        LimitsView()
                            .navigationTitle("Limits")
                    }
                    .tabItem {
                        Label("Limits", systemImage: "slider.horizontal.3")
                    }
                    
                    NavigationStack {
                        SettingsView()
                            .navigationTitle("Settings")
                    }
                    
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
                    
                }
            }
            .fullScreenCover(isPresented: $showOnboarding, content: {
                OnboardingView(showOnboarding: $showOnboarding)
            })
        }
        .preferredColorScheme(userTheme.colorScheme)

    }
}

#Preview {
    ContentView()
}
