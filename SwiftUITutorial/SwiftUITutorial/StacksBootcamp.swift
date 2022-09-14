//
//  StacksBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 17/08/22.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        
        // VStack  - Vertical
        // HStack - Horizontal
        // ZStack - zIndex back on front
//        VStack{
//            HStack (alignment: .center, spacing: 0, content:  {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 100, height: 100)
//
//
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//
//                Rectangle()
//                    .fill(.yellow)
//                .frame(width: 100, height: 100)
//
//                })
//
//            VStack (alignment: .leading , spacing: 0, content: {
//
//
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 120, height: 120)
//
//                Rectangle()
//                    .fill(.yellow)
//                    .frame(width: 100, height: 100)
//
//            })
//
//            ZStack (alignment: .leading , content: {
//
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//
//                Rectangle()
//                    .fill(.yellow)
//                    .frame(width: 50, height: 50)
//
//            })
//        }
        
        
        
//        ZStack (alignment: .top){
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 400, alignment: .center)
//            VStack(alignment: .leading) {
//
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150, alignment: .center)
//
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100, alignment: .center)
//
//                HStack {
//                    Rectangle()
//                        .fill(.orange)
//                    .frame(width: 50, height: 50, alignment: .center)
//
//                    Rectangle()
//                        .fill(.blue)
//                    .frame(width: 75, height: 75, alignment: .center)
//
//                    Rectangle()
//                        .fill(.purple)
//                    .frame(width: 25, height: 25, alignment: .center)
//                }
//                .background(.white)
//
//            }
//            .background(.black)
//        }
        
        
        
//        VStack (alignment:.center, spacing: 20) {
//
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("Hello World")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }
        
        
        VStack (spacing:50){
            
            ZStack () {
                
                Circle()
                    .frame(width: 100, height: 100)
                
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
                
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
