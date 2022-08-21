//
//  BackgroundandOverlaysBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 17/08/22.
//

import SwiftUI

struct BackgroundandOverlaysBootcamp: View {
    var body: some View {
        
        Image(systemName: "heart.fill")
        
            .font(.largeTitle)
            .foregroundColor(.white)
        
            .background(
        
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.green, .purple]), startPoint: .bottomTrailing, endPoint: .topLeading))
                    .frame(width: 100, height: 100)
                    .shadow(color: .purple, radius: 10, x: 0, y: 10)
            
                    .overlay(
                    
                            Circle()
                                .fill(.blue)
                                .frame(width: 35, height: 35)
                                .overlay(
                                
                                    Text("1")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                
                                )
                            ,alignment: .bottomTrailing
                    
                    )
                )
        
        
        
        
//        Rectangle()
//
//            .fill(.green)
//            .frame(width: 200, height: 100)
//
//            .overlay(
//
//                Rectangle()
//                    .fill(.pink)
//                    .frame(width: 100, height: 60)
//                ,alignment: .topLeading
//
//            )
//            .background(
//
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 400, height: 150)
//                ,alignment: .bottomTrailing
//            )
        
        
        
//       Circle()
//            .fill(.pink)
//            .frame(width: 100 , height: 100, alignment: .center)
//            .overlay(
//
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background (
//
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 120, height: 120)
//            )
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            .background(
//
//                //.red
//               // LinearGradient(gradient: Gradient(colors: [.red, .green]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [.red, .green]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100)
//
//
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .black]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 120, height: 120)
//            )
            
    }
}

struct BackgroundandOverlaysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundandOverlaysBootcamp()
    }
}
