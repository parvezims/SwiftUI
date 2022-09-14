//
//  SafeAreaBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 22/08/22.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        
        ScrollView {
            
            VStack {
                Text("Title Start from here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                ForEach(0..<20) {index in
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height:150)
                        .shadow(radius: 5)
                        .padding(20)
                    
                }
            }
            
        }
            .background(.red)
            .edgesIgnoringSafeArea(.all)
        
        
        
        
        
//        ZStack {
//            // background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            // foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
