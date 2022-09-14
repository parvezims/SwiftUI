//
//  TernaryOperatorBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 23/08/22.
//

import SwiftUI

struct TernaryOperatorBootcamp: View {
    
    @State var isTernary : Bool = false
    var body: some View {
        VStack () {
            Button(action: {
                isTernary.toggle()
            }, label: {
                Text ("Click me")
            })
            Circle()
                .fill(
                    isTernary ? .red : .green
                )
                .frame(width: 100, height: 100)
        }
    }
}

struct TernaryOperatorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorBootcamp()
    }
}
