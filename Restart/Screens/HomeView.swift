//
//  HomeView.swift
//  Restart
//
//  Created by John Canzoneri on 1/7/22.
//

import SwiftUI

struct HomeView: View {
    
    //MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button(action: {
                
                //some action
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        } //: Vstack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
