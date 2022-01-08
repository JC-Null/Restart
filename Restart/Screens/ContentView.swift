//central hub of the application

import SwiftUI

//property to hold intial and further state


struct ContentView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    //@AppStorage a special swiftUI property wrapper that will use user's default under the hood
    //Purpose is to store some value on the devices permanent storage using get and set method
    //"onboarding" a unique key identifer that we can refer too
    // the variable isonboardingviewactive, is the peoperty name we can use in swiftUI
    //the true is to intialize
    //logic overall: is the very first screen users see is onboarding screen
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
                
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
