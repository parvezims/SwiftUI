//
//  ButtonStyleBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 30/08/22.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {

        VStack(spacing: 20) {
            
            Button(action: {
                
            }, label: {
                
                Text("Button Title")
                    .frame(height:50)
                    .frame(maxWidth:.infinity)
                
            })
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.large)
                .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height:50)
            .frame(maxWidth:.infinity)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height:50)
            .frame(maxWidth:.infinity)
            .controlSize(.small)

            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height:50)
            .frame(maxWidth:.infinity)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height:50)
            .frame(maxWidth:.infinity)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            
            
            
            
            
        }
        .padding()
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
            .preferredColorScheme(.light)
    }
}
