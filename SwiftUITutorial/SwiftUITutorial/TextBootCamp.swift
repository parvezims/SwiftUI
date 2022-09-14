//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 15/08/22.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {

        Text("Hello World This first project of Swift UI and I am loving it to Lean I need to add more text to check atleast 3 lines".uppercased())
            //.font(.largeTitle)
            //.foregroundColor(Color.red)
            //.fontWeight(.medium)
            //.fontWeight(.heavy)
            //.bold()
            //.underline()
            //.italic()
            //.underline(true, color: .green)
            //.strikethrough()
            //.strikethrough(true, color: .red)
            //.font(.system(size: 40, weight: .semibold , design: .serif))
            //.baselineOffset(10)
            //.kerning(5)
            .foregroundColor(.red)
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
            
        
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
