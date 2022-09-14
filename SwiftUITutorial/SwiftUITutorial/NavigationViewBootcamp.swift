//
//  NavigationViewBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 25/08/22.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView() {
            
            ScrollView () {
                
                NavigationLink("Hello World", destination: {
                    
                    MyOtherScreen()
                })
                Text("Title")
                Text("Title")
                Text("Title")
                
            }
            .navigationTitle("Bar Title")
//            .navigationBarItems(leading: {
//
//                Button(action: {
//
//                }, label: {
//                    Image(systemName: "person.fill")
//                })
//            }, trailing: {
//
//                Button(action: {
//
//                }, label: {
//                    Image(systemName: "gear")
//                })
//            })
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarHidden(true)
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
                .navigationTitle("MyOtherScreen")
            //.navigationBarHidden(true) 
            VStack {
                Button("close Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Third Screen", destination: Text("Third Screen"))
            }
        }
    }
}
 
struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
