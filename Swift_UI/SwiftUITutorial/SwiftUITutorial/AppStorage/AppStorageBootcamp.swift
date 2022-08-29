//
//  AppStorageBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 29/08/22.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    //@State var currentUsername: String?
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack (spacing: 20){
            
            Text(currentUsername ?? "Add username")
            
            if let username = currentUsername {
                Text(username)
            }
            
            Button("Save".uppercased()) {
                let name:String = "Javed"
                currentUsername = name
            }
            .padding()
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
