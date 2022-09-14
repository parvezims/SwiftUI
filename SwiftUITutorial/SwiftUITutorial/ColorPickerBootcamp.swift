//
//  ColorPickerBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 27/08/22.
//

import SwiftUI

struct ColorPickerBootcamp: View {

    @State var  backgoundColor : Color = .red
    var body: some View {
        
        ZStack {
            
            backgoundColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a Color", selection: $backgoundColor, supportsOpacity: true)
                .padding()
                .background(.blue)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
