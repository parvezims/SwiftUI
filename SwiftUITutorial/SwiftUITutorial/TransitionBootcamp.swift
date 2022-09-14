//
//  TransitionBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 24/08/22.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView : Bool = false
    
    var body: some View {
        
        ZStack (alignment:.bottom){
            
            VStack (){
                

                Spacer()
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
                Spacer()
             



            }
            
            if showView {
            RoundedRectangle(cornerRadius: 10)
                .frame(height: UIScreen.main.bounds.height * 0.5)
                //.opacity(showView ? 1 : 0.0)
                //.transition(.move(edge: .bottom))
                //.transition(.move(edge: .leading))
                //.transition(.move(edge: .trailing))
                
                // not worling
                //.opacity(AnyTransition.opacity.animation(.easeInOut))
                .transition(.move(edge: .top))
                
                
                .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.all)

    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
