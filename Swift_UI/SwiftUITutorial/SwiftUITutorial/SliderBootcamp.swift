//
//  SliderBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 27/08/22.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var valueRange : Double = 10
    @State var color : Color = .red
    var body: some View {
        
        VStack {
            
            Text("Ratring")
            Text(String(format: "%0.0f", valueRange))
                .foregroundColor(color)
            //Text("Current: \(valueRange)")
            //Slider(value: $valueRange)
            //Slider(value: $valueRange, in: 1...100)
           // Slider(value: $valueRange, in: 1...100, step: 1.0)
            
            
            
            Slider(
                value: $valueRange,
                in: 1...100,
                step: 1.0 ,
                onEditingChanged: { (_) in
                    color = .green
                } ,
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("101"),
                label: {
                    Text("")
                })
                .accentColor(.red)

        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
