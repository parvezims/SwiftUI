//
//  AnimationBoorcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 23/08/22.
//

import SwiftUI

struct AnimationBoorcamp: View {
   
    @State var isAnimation : Bool = false
    
    var body: some View {
        
        VStack {
            Button(action: {
                //withAnimation(Animation.default.delay(0.2)) {
                withAnimation (
                    Animation
                        .default
                        .repeatCount(2), {
                            
                        } )
                         
                    isAnimation.toggle()
                
            }, label: {
                Text("Change Color")
            })
            
            
            RoundedRectangle(cornerRadius: isAnimation ? 50 : 25)
                .fill(isAnimation ? .red : .green)
                .frame(
                    width: isAnimation ? 100 : 300,
                    height: isAnimation ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimation ? 300 : 0))
                .offset(y: isAnimation ? 300 : 0)
               
                
//                .animation( Animation
//                                .default
//                                .repeatForever(autoreverses: false));, value: nil )
//
            
            Spacer()
        }
        
    }
}

struct AnimationBoorcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBoorcamp()
    }
}
