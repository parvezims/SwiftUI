//
//  BindingBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 23/08/22.
//

import SwiftUI

struct BindingBootcamp: View {
     
    @State var backColor : Color = .purple
    @State var title : String = "Title"
    
    var body: some View {

        ZStack {
            
            backColor.edgesIgnoringSafeArea(.all)
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backColor, title: $title)
            }
        }
    }
}

struct ButtonView : View {
    
    @Binding var backgroundColor : Color
    @State var buttonColor : Color = .blue
    @Binding var title : String
    
    var body: some View {
        
        Button(action: {
            
            backgroundColor = .orange
            title = "Title Change"
            buttonColor = .pink
            
        }, label: {
            
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.red)
                .cornerRadius(10)
        })
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
