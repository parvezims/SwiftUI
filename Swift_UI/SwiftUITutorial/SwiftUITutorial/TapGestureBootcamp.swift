//
//  TapGestureBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 28/08/22.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    
    @State var isSelected : Bool = false
    var body: some View {

        VStack (spacing: 25){
            
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .foregroundColor(isSelected ? .red : .green)
            
            Button(action: {
               
                isSelected.toggle()
                 
            }, label: {
                
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
                
            })
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            
                .onTapGesture(count: 3) {
                    isSelected.toggle()
                }
            
            Spacer()
            
        } .padding(40)

    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
