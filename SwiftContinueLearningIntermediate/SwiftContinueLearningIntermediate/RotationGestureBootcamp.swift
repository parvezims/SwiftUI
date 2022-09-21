//
//  RotationGestureBootcamp.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Mohammad.Parvez on 15/09/22.
//

import SwiftUI

struct RotationGestureBootcamp: View {
    
    @State var angel : Angle = Angle(degrees: -45)
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding(50)
            .background(.blue)
            .cornerRadius(10)
            .rotationEffect(angel)
            .gesture(
                RotationGesture()
                    .onChanged {value in
                        angel = value
                    }
                    .onEnded{value in
                        withAnimation(.spring()) {
                            angel = Angle(degrees: 0)
                        }
                    }
            )
    }
}

struct RotationGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureBootcamp()
    }
}
