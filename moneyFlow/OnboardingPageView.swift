 //
//  OnboardingPageView.swift
//  moneyFlow
//
//  Created by Martin Koudela on 24.09.2025.
//

import SwiftUI
struct OnboardingPageView: View {
    let imageName: String
    let title: String
    let description: String
    let imageColor: Color
    let showDoneButton: Bool
    @State private var selection: Int = 0
    var nextAction: () -> Void
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .foregroundColor(imageColor)
            
            Text(title)
                .font(.title)
                .fontWeight(.bold)
            Text(description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
            if showDoneButton {
                Button("Let's get started") {
                    nextAction()
                }
                .buttonStyle(.borderedProminent)
                .padding(.top)
            } else {
                Button("Next") {
                    nextAction()
                }
                .buttonStyle(.borderedProminent)
                .padding(.top)
                
            }
        }
        .padding()
    }
}

struct OnboardingPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(showOnboarding: .constant (true))
    }
}
// TODO: Make this page dissapear after first view
