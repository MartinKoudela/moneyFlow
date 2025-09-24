//
//  ContentView.swift
//  moneyFlow
//
//  Created by Martin Koudela on 24.09.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            LimitsView()
                .tabItem {
                    Label("Limits", systemImage: "slider.horizontal.3")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
