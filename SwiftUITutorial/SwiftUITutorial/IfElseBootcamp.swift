//
//  IfElseBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 23/08/22.
//

import SwiftUI

struct IfElseBootcamp: View {
   
    
    @State var showCircle : Bool = false
    @State var showRectangle : Bool = false
    @State var isLoading : Bool = true
    var body: some View {
        
        VStack (spacing: 20 ){
            
           
            
            Button(action: {
                isLoading.toggle()
                
            }, label: {
                
                Text("isLocading : \(isLoading.description)")
            })
            
            if isLoading {
                ProgressView()
            }
            
            
            
//            Button(action: {
//
//                showCircle.toggle()
//            }, label: {
//                Text ("Circle Button: \(showCircle.description)")
//            })
//
//            Button(action: {
//
//                showRectangle.toggle()
//            }, label: {
//                Text ("Rectangle Button: \(showRectangle.description)")
//            })
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//            if showCircle || showRectangle   {
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 200, height: 100)
//            }
            Spacer()
        }
    }
}

struct IfElseBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfElseBootcamp()
    }
}
