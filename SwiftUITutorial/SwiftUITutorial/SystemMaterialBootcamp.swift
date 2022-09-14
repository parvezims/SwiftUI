//
//  SystemMaterialBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 29/08/22.
//

import SwiftUI

struct SystemMaterialBootcamp: View {
    var body: some View {

        VStack {
            
            Spacer()
            
            VStack {

                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 40, height: 4)
                    .padding()
                Spacer()


            }
            .frame(height:350)
            .frame(maxWidth:.infinity)
            .background(.ultraThinMaterial )
            .cornerRadius(30)
            
            
        }
        .ignoresSafeArea()
        .background(
            
            Image("therock")
                .scaledToFit()

        )
    }
}

struct SystemMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SystemMaterialBootcamp()
    }
}
