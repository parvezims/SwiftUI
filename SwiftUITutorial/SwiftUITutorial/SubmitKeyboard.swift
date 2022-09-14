//
//  SubmitKeyboard.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 28/08/22.
//

import SwiftUI

struct SubmitKeyboard: View {
    
    @State var usernameText : String = "112"
    @State var emailText : String = "212"
    @State var password : String = "12"
    
    
    var body: some View {

        VStack {
            
            TextField("Placeholder", text:$usernameText )
                .submitLabel(.route)
                .onSubmit {
                    print("username text")
                }
              
            TextField("Placeholder", text:$emailText )
                .submitLabel(.next)
                .onSubmit {
                    print("email text")
                }
                            
            
            SecureField("password", text: $password)
                .submitLabel(.search)
                .onSubmit {
                    print("password text")
                }
            
        }
    }
}

struct SubmitKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        SubmitKeyboard()
    }
}
