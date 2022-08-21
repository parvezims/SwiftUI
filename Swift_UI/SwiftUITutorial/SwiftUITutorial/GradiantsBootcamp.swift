//
//  GradiantsBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 17/08/22.
//

import SwiftUI

struct GradiantsBootcamp: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
        .fill(
        
            //Color.red
//            LinearGradient(
//                gradient: Gradient(colors: [.red,.blue]),
//                startPoint: .topLeading,
//                endPoint: .bottomTrailing)
             
//            RadialGradient(
//                gradient: Gradient(colors: [.red,.blue]),
//                center: .center,
//                startRadius: 5,
//                endRadius: 300)
            
            AngularGradient(
                gradient: Gradient(colors: [.red, .blue]),
                center: .center,
                startAngle: .degrees(60 ))
        
        )
        .frame(width: 300, height: 200)
    }
}

struct GradiantsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradiantsBootcamp()
    }
}
