//
//  PopOverBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 24/08/22.
//

import SwiftUI

struct PopOverBootcamp: View {
    
    @State var showNewScreen : Bool = false
    var body: some View {

        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            VStack {
                
                Button(action: {
                    showNewScreen.toggle()
                }, label: {
                    
                    Text("Button")
                        .font(.largeTitle)
                })
                Spacer()
            }
            
            // Method Sheet 1
            
//            .sheet(isPresented: $isPresented, content: {
//
//                NewScreen()
//            })
            
            // Method 2 transiton
            
//            ZStack {
//                if showNewScreen {
//
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//             .zIndex(2.0)
            
            
            // Method 3 Animation Offset
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.easeIn)
                //.animation(.easeIn, value: 100.0)
            
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentedmode
    @Binding var showNewScreen : Bool
    
    var body: some View {
        ZStack (alignment:.topLeading){
            Color.purple.edgesIgnoringSafeArea(.all)
            VStack {
                Button(action: {
                    showNewScreen.toggle()
                    //presentedmode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                })
            }
        }
    }
}

struct PopOverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopOverBootcamp()
        //NewScreen()
    }
}
