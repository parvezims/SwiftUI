//
//  StateBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 23/08/22.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor :Color = .green
    @State var title: String = "Title"
    @State var count : Int = 0
    
    var body: some View {
        
        ZStack() {
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Text(title)
                    .font(.largeTitle)
                
                Text("Count : \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(){
                    
                    Button("Button 1") {
                        title = "Button 1 Pressed"
                        count += 1
                        backgroundColor = .orange
                        
                    }
                    Button("Button 2") {
                        title = "Button 2 Pressed"
                        count += 1
                        backgroundColor = .purple
                    }
                }
            }
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
