//
//  ForEachBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 21/08/22.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    
    let data :  [String] = ["Hi", "Hello", "EveryOne"]
    let myString = "Hello"
    var body: some View {

        
        VStack {
            
            
            ForEach(1..<100) { index in
                
                HStack {
                    Circle()
                        .fill(.yellow)
                        .frame(width: 30, height: 30)
                    
                    Text("Hi Everyone \(index)")
                        .frame(width: 200, height: 30)
                }
                
            }
            
//            ForEach(data.indices) { index in
//
//                Text("\(data[index]) -> \(index)")
//            }
        }
        
        
        
//        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//
//                    Text("Index is  \(index)")
//                }
//
//            }
//        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
