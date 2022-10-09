//
//  GeometryReaderBootcamp.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Mohammad.Parvez on 22/09/22.
//

import SwiftUI

struct GeometryReaderBootcamp: View {
   
    
    func getPercentage(geo: GeometryProxy)  -> Double {
        
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        
        
        return Double((1 - currentX / maxDistance))
        
        
    }
    
    var body: some View {

        
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                
                ForEach(0..<20) { index in
                    GeometryReader { geometry in
                        RoundedRectangle(cornerSize: CGSize(width: 20 , height: 20))
                            .rotation3DEffect(Angle(degrees: getPercentage(geo: geometry) * 40),
                                              axis: (x:0.0 , y: 1.0, z: 0.0))
                    }
                    .frame(width: 300, height: 250, alignment: .center)
                    .padding()
                }
            }
        })
        
        
//        GeometryReader { geometry in
//            HStack (spacing:  0){
//                Rectangle().fill(.red)
//                    .frame(width: geometry.size.width * 0.667)
//                Rectangle().fill(.blue)
//
//            }
//            .ignoresSafeArea()
//        }
    }
}

struct GeometryReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderBootcamp()
.previewInterfaceOrientation(.portrait)
    }
}