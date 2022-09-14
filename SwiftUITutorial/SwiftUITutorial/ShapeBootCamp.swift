//
//  ShapeViews.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 17/08/22.
//

import SwiftUI

struct ShapeBootCamp: View {
    var body: some View {

        //Circle()
        //Ellipse()
        
        //Capsule(style: .continuous)
        //Rectangle()
        RoundedRectangle(cornerRadius: 50)
        
            .fill(.green)
            //.foregroundColor(.pink)
            //.stroke()
            //.stroke(.blue)
            //.stroke(.red, lineWidth: 10)
            //.stroke(.green,  style: StrokeStyle(lineWidth: 5, lineCap: .square, lineJoin: .round, dash: [10] ))
            //.trim(from: 0.2, to: 1.0)
            //.stroke(.green, lineWidth: 10)
            .frame(width: 200, height: 100)
        
        
        
    }
}

struct ShapeViews_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBootCamp()
    }
}
