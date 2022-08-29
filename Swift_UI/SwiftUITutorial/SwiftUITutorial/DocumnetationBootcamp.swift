//
//  DocumnetationBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 27/08/22.
//

import SwiftUI

struct DocumnetationBootcamp: View {
    
    // MARK: STARTING

    
    
    
    @State var selectedTab : Int = 0
    
    var icons : [String] = ["house.fill","globe","heart.fill","person.fill"]
    var body: some View { // Start: Body
        
        TabView() { // TableView: Starts
            NewView(selectedTab: $selectedTab)
            NewView(selectedTab: $selectedTab)
        }
        .background(
            RadialGradient(colors: [.red,.blue,.green], center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        
 
    } // End: Body
}

// MARK: PREVIEW


struct DocumnetationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumnetationBootcamp()
    }
}

// MARK: NEWCLASS
/// This is new Class for a single view to show on tabview

struct NewView: View {
    
    @Binding var selectedTab : Int
    var body: some View {
        ZStack {
            
            Color.red.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Home View")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
                Button(action: {
                    selectedTab = 2
                    
                }, label: {
                    
                    Text("Go To profile")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(.blue)
                        .cornerRadius(10)
                })
            }
        }
    }
    
    // MARK: Function with Document

    /// Return sum of two values
    /// - Parameters: two parameter required two do this
    ///
    ///  This is first method i have created with proper documentatations.
    ///  ```
    ///  documentedFunctionWithSum(2,5) -> 2+5 = 7
    ///  ```
    ///-Warning: only works with Int
    ///- a: Int straight for ward Int type only
    ///- b: Int second value is also int type
    ///- Returns: return sum of 2 values
    func documentedFunctionWithSum(a: Int , b : Int) -> Int {
        a+b
    }
}


// MARK: CODE
