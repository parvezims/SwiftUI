//
//  ShaeetsBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 24/08/22.
//

import SwiftUI

struct ShaeetsBootcamp: View {
    
    @State var showSheet: Bool = false
    var body: some View {
        
        ZStack () {
            
            Color.green.edgesIgnoringSafeArea(.all)
            Button(action: {
                showSheet.toggle()
                
            }, label: {
                Text("Show")
                    .font(.headline)
                    .padding(20)
                    .background(.white)
                    .cornerRadius(10)
            })
                
//                .sheet(isPresented: $showSheet, content: {
//
//                    // do not add anything with if else
//                    SecondScreen()
//
//                })
            
                .fullScreenCover(isPresented: $showSheet, content: {
                    // do not add anything with if else
                    SecondScreen()
                    
                })
            
                
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var  presentationMode
    
    var body: some View {

        ZStack (alignment: .topLeading) {
            
            Color.red.edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {

                Image(systemName:"xmark")
                    .font(.headline)
                    .padding(20)
                    .foregroundColor(.white)
                
            })
        }
    }
}


struct ShaeetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShaeetsBootcamp()
       // SecondScreen()
    }
}
