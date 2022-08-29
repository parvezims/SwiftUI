//
//  CustomDataModelBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 28/08/22.
//

import SwiftUI


struct UserModel: Identifiable {
    
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct CustomDataModelBootcamp: View {
    
    
    @State var users : [UserModel] = [
        
        UserModel(
            displayName: "Parvez", userName: "parvezims", followerCount: 10, isVerified: true),
        UserModel( displayName: "Rubee",userName: "Rubeenoida",followerCount: 15, isVerified: true),
        UserModel(displayName: "Javed", userName: "Javedakb", followerCount: 55 , isVerified: false),
        UserModel(displayName: "Taskin",userName: "taskinHardoi",followerCount: 100, isVerified: true ),
        UserModel(displayName: "Mujazzafr",userName: "MujafLko", followerCount: 150 , isVerified: true) ]
    
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach(users) {user in
                    
                    HStack (spacing:10.0){
                        
                        Circle()
                            .frame(width: 30, height: 30)
                        
                        VStack (alignment:.leading, spacing: 2.0){
                           
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                         
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(user.isVerified ? .blue : .gray)
                        
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Follower")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                    
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Custome Model")
        }
    }
}

struct CustomDataModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomDataModelBootcamp()
    }
}
