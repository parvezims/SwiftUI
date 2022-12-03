//
//  ArrayBootcamp.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Muzaffar on 17/10/22.
//

import SwiftUI

struct UserModel : Identifiable {
    
    let id = UUID().uuidString
    let name: String?
    let points: Int
    let isVerified: Bool
    
}

class ArrayModificationViewModel : ObservableObject {
    
    @Published var dataArray:[UserModel] = []
    @Published var filteredArray : [UserModel] = []
    @Published var mappedArray:[String] = []
    
    init() {
        getUsers()
        updateFilteredArray()
    }
    
    
    func getUsers() {
        let user1 = UserModel(name: "Taskin", points: 10, isVerified: true)
        let user2 = UserModel(name: "Parvez", points: 50, isVerified: false)
        let user3 = UserModel(name: "Javed", points: 82, isVerified: true)
        let user4 = UserModel(name: "John", points: 22, isVerified: true)
        let user5 = UserModel(name: nil, points: 100, isVerified: false)
        let user6 = UserModel(name: "Aisha", points: 30, isVerified: true)
        let user7 = UserModel(name: "Rubee", points: 38, isVerified: true)
        let user8 = UserModel(name: "Muzaffar", points: 56, isVerified: true)
        let user9 = UserModel(name: "Shami", points: 43, isVerified: true)
        let user10 = UserModel(name: "Shadab", points: 98, isVerified: false)
        let user11 = UserModel(name: nil, points: 2, isVerified: true)
        let user12 = UserModel(name: "Zohan", points: 6, isVerified: false)

        dataArray.append(contentsOf:[
            user1,user2,user3,user4,user5,user6,user7,user8,user9,user10,user11,user1
        ])
    }
    
    func updateFilteredArray() {
        
        //sort
        /*
//        filteredArray = dataArray.sorted(by: { (user1, user2) -> Bool in
//            return user1.points < user2.points
//        })
        
        filteredArray = dataArray.sorted(by: {$0.points < $1.points})
         */
        
        // filter
        /*
        //filteredArray = dataArray.filter({$0.points > 50})
        //filteredArray = dataArray.filter({$0.isVerified})
        //filteredArray = dataArray.filter({$0.name.contains("i")})
         */

        // map
//        mappedArray = dataArray.map({ user in
//            String("\(user.name) -> \(user.points)")
//        })
        
        mappedArray = dataArray
            .sorted(by: {$0.points > $1.points})
            .filter({ $0.points > 40 })
            .compactMap({$0.name})
    }
}

struct ArrayBootcamp: View {
    
    @StateObject var vm = ArrayModificationViewModel()
    var body: some View {
        ScrollView {
            VStack (spacing: 20){
                
                ForEach(vm.mappedArray, id: \.self) { name in
                    
                    Text(name)
                        .font(.headline)
                }
                
                
//                ForEach(vm.filteredArray) {  user in
//
//                    VStack(alignment: .leading) {
//                        Text(user.name)
//                            .font(.headline)
//
//                        HStack {
//                            Text("Points \(user.points)")
//                            Spacer()
//                            if user.isVerified {
//                                Image(systemName: "flame.fill")
//                            }
//                        }
//
//                    }
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue.cornerRadius(10))
//                    .padding(.horizontal)
//                }
            }
        }
    }
}

struct ArrayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ArrayBootcamp()
    }
}
