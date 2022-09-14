//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 18/08/22.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(.orange)
//            //.padding()
//            .padding(. all, 10)
//            //.padding(.trailing, 10)
//        //    .padding(.vertical, 10)
//            .padding(.horizontal, 20)
//
//
//            .background(.blue)
        
        VStack(alignment: .leading) {
            Text("Hello World")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
         
            Text("Hello This is new Text with Large Line, ans we are trying to add multiple line and text is leading edge")
            
            
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius:10, x: 0.0, y: 10.0)
                
        )
        
         
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
