//
//  OnboardingView.swift
//  moneyFlow
//
//  Created by Martin Koudela on 24.09.2025.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var showOnboarding: Bool
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            OnboardingPageView(
                imageName: "dollarsign",
                title: "Expenses in sight",
                description: "Watch your expenses in real time and see how much you can save to achieve your financial goals.",
                imageColor: .green,
                showDoneButton: false,
                nextAction: goNext
            )
            .tag(0)
            
            OnboardingPageView(
                imageName: "slider.horizontal.3",
                title: "Set your own limits",
                description: "Set your limits for daily, weekly and monthly expenses.",
                imageColor: .blue,
                showDoneButton: false,
                nextAction: goNext
            )
            .tag(1)
            
            OnboardingPageView(
                imageName: "gear",
                title: "Explore settings",
                description: "Sing",
                imageColor: .gray,
                showDoneButton: true,
                nextAction: finishOnboarding
            )
            .tag(2)
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
    
    // MARK: - Actions
    func goNext() {
        if selection < 2 {
            selection += 1
        }
    }
    
    func finishOnboarding() {
        showOnboarding = false
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(showOnboarding: .constant (true))
    }
}
