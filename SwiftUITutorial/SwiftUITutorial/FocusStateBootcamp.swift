//
//  FocusStateBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 30/08/22.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    @FocusState private var usernameIsFocus : Bool
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter user name...", text: $username)
            
                //.focused($usernameIsFocus)
            // foucsed is not working may i need to update the xcode 
                .padding(.leading)
                .frame(height:50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            TextField("Enter user name...", text: $username)
            
                //.focused($usernameIsFocus)
                .padding(.leading)
                .frame(height:50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Toggle Focus State") {
                usernameIsFocus.toggle()
            }
            .foregroundColor(.gray)
            .background(.red)
            
            
        }
        .padding(40)
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
