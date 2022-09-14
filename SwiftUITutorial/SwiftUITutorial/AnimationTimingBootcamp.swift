//
//  AnimationTimingBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 23/08/22.
//

import SwiftUI

struct AnimationTimingBootcamp: View {

    
    @State var isAnimate : Bool = false
    var timing : Double = 1.0
    
    var body: some View {

        VStack {
            
            
            Button("Animate"){
                isAnimate.toggle()
            }
           
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimate ? 50 : 300, height: 150)
                .animation(Animation.spring())
            
            
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimate ? 50 : 300, height: 150)
                .animation(Animation.spring(response: 1.0, dampingFraction: 0.5, blendDuration: 1.0))
            
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimate ? 50 : 300, height: 150)
                .animation(Animation.linear(duration: timing))
            
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width:  isAnimate ? 50 : 300, height: 150)
                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width:  isAnimate ? 50 : 300, height: 150)
//                .animation(Animation.easeOut(duration: 10))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width:  isAnimate ? 50 : 300, height: 150)
//                .animation(Animation.easeInOut(duration: timing))
            
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
