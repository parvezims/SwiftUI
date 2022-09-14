//
//  ColorsBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 17/08/22.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                
                //Color(Color.primary)
                //Color(#colorLiteral(red: 0.292, green: 0.081, blue: 0.6, alpha: 255)))
                // Color(UIColor.secondarySystemBackground)
                Color("customColor")
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 5)
            .shadow(color: .red.opacity(0.3), radius: 10, x: 20, y: 50)
        
        
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
            
    }
}
