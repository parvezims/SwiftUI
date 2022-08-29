//
//  IntroView.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 29/08/22.
//

import SwiftUI

struct IntroView: View {
   
    
    @AppStorage("signed_in") var isSigned: Bool = false
    
    var body: some View {

        ZStack {
            
            RadialGradient(
                gradient: Gradient(colors: [.pink,.purple]),
                center: .center,
                startRadius: 5,
                endRadius: 500)
                .edgesIgnoringSafeArea(.all)
            
            // if user is signe in
            // show proflile view
            //else
            // onboarding view
            
            if isSigned {
                Text("ProfileView")
                //ProfileView()
            }
            else {
                OnboardingView()
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
