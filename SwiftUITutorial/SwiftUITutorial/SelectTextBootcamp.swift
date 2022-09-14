//
//  SelectTextBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 29/08/22.
//

import SwiftUI

struct SelectTextBootcamp: View {
    var body: some View {
       
        VStack(spacing: 30) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .textSelection(.enabled)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .textSelection(.enabled)
            
        }
    }
}

struct SelectTextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SelectTextBootcamp()
    }
}
