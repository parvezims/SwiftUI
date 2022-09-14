//
//  SwiftUIView.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 17/08/22.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
//        Image("coforge")
//            .resizable()
//            .scaledToFill()
//            .frame(width: 300, height: 300)
//            //.cornerRadius(150)
//            .clipped()
//            .clipShape(
//                //Circle()
//                //RoundedRectangle(cornerSize: 30)
//                Rectangle()
//            )
        
        
        Image("google")
        
        // need a actual templted image with black color ans transparent background.
        // then only rendring will work
        
           // .renderingMode(.template)
           // .foregroundColor(.green)
            .scaledToFit()
            .frame(width: 400, height: 300)
            //.cornerRadius(150)
            //.clipped()
//            .clipShape(
//                //Circle()
//                //RoundedRectangle(cornerSize: 30)
//                Rectangle()
//            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
