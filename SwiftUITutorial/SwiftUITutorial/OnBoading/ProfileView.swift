//
//  ProfileView.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 29/08/22.
//

import SwiftUI



struct ProfileView: View {
    
    @AppStorage("name") var currentUserName:String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignIn: Bool = false
    
    var body: some View {

        VStack (spacing: 10 ){
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years ols")
            Text("User Gender is \(currentUserGender ?? "Unknown") ")
            Text("Sign Out")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height:55)
                .frame(maxWidth:.infinity)
                .background(.black)
                .cornerRadius(10)
                .padding(5)
                .onTapGesture {
                    signOut()
                }
            
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .cornerRadius(10)
        .shadow( radius: 20)
        
    }
    
    func signOut() {
        
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignIn = false
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
