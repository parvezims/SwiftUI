//
//  DarkModeBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 27/08/22.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment (\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView{
                
                VStack(spacing: 20) {
                    
                    Text("This Color is Primary")
                        .foregroundColor(.primary)
                    Text("This Color is Secondary")
                        .foregroundColor(.secondary)
                    Text("This Color is Black")
                        .foregroundColor(.black)
                    Text("This Color is White")
                        .foregroundColor(.white)
                    
                    Text("This Color is Red")
                        .foregroundColor(.red)
                    
                    Text("Adaptive Color")
                        .foregroundColor(Color("AdaptiveColor"))
                        .font(.largeTitle)
                    
                    Text("Locally Adaptive Color")
                        .foregroundColor(colorScheme == .light ? .red : .yellow)
                        .font(.largeTitle)
                    
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
            
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {

        Group {
            DarkModeBootcamp()
                .preferredColorScheme(.light)
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
        }
    }
}
