//
//  LongPressGestureBootcamp.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Mohammad.Parvez on 11/09/22.
//

import SwiftUI

struct LongPressGestureBootcamp: View {
    
    @State var isComplete : Bool = false
    @State var backColor : Color = .gray
    var body: some View {
        Text(isComplete ? "Completed" : "Not Compleyted")
            .padding()
            .padding(.horizontal)
            .background(
                backColor
            )
            .cornerRadius(10)
            .onTapGesture {
                isComplete.toggle()
                backColor = .red
            }
        
            .onLongPressGesture(minimumDuration: 2.0 , maximumDistance: 100) {
                backColor = .yellow
                isComplete.toggle()
            }
    }
}

struct LongPressGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureBootcamp()
    }
}
