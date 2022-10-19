//
//  HashableBootcamp.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Muzaffar on 05/10/22.
//

import SwiftUI

//struct MyCustomModel: Identifiable {
//    let id = UUID().uuidString
//    let name: String
//}

struct MyCustomModel: Hashable {
    let name: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}


struct HashableBootcamp: View {
    
    //let data = ["One", "Two", "Three", "Four", "Five"]
    
    
    let data = [MyCustomModel(name: "One"),
                MyCustomModel(name: "Two"),
                MyCustomModel(name: "Three"),
                MyCustomModel(name: "Four"),
                MyCustomModel(name: "Five")]
    
    var body: some View {

        ScrollView() {
            
            VStack(spacing: 40) {
                
                // For Hashable
                ForEach(data, id: \.self) { datum in
                    Text(datum.hashValue.description)
                        .font(.headline)
                }
                
                
                // For Identifiable array
//                ForEach(data) { datum in
//                    Text(datum.name)
//                }
                
                
                // for String Array
//                ForEach(data, id: \.self) { item in
//                    Text("\(item.name), \(item.hashValue.description)")
//                        .font(.headline)
//                }
                
            }
            
        }
    }
}

struct HashableBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HashableBootcamp()
    }
}
