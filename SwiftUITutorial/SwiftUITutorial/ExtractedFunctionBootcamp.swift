//
//  ExtractedFunctionBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 23/08/22.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    
    @State var backgroundColor : Color = .pink
    var body: some View {
        
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            contentLayer
        }
    }
    
    var contentLayer: some View {
        
        VStack {
            
            Text("Title")
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                buttonPressed()
            }, label: {
                
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                
            })
        }
    }
     
    func buttonPressed() {
        backgroundColor = .yellow
    }
    
}

struct ExtractedFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionBootcamp()
    }
}
