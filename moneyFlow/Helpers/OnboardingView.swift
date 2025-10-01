//
//  OnboardingView.swift
//  moneyFlow
//
//  Created by Martin Koudela on 24.09.2025.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var showOnboarding: Bool
    @State private var selection: Int = 0
    var body: some View {
        TabView(selection: $selection) {
            OnboardingPageView(
                imageName: "hand.wave.fill",
                title: "Welcome",
                description: "Thank you for using my app!",
                imageColor: .indigo,
                showDoneButton: false,
                nextAction: goNext
            )
            .tag(0)
            
            OnboardingPageView(
                imageName: "dollarsign",
                title: "Track your expences",
                description: "Watch your expenses in real time and see how much you can save to achieve your financial goals.",
                imageColor: .green,
                showDoneButton: false,
                nextAction: goNext
            )
            .tag(1)
            
            OnboardingPageView(
                imageName: "slider.horizontal.3",
                title: "Set your own limits",
                description: "Set your limits for daily, weekly and monthly expenses.",
                imageColor: .teal,
                showDoneButton: false,
                nextAction: goNext
            )
            .tag(2)
            
            OnboardingPageView(
                imageName: "gear",
                title: "Explore settings",
                description: "Set the currency you use. Set the theme you love. And much more.",
                imageColor: .gray,
                showDoneButton: true,
                nextAction: finishOnboarding
            )
            .tag(3)
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .animation(.easeInOut, value: selection)
        .transition(.slide)

    }
    
    func goNext() {
        if selection < 3 {
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
