//
//  ButtonBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 22/08/22.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    
    @State var title : String = "This is my title"
    
    var body: some View {
        
        
        VStack (spacing:20){
            
            Text(title)
            Button("Press Me") {
                
                self.title = "Press Me Button pressed"
            }
            
            Button(action: {
                self.title = "Save Button pressed"
                
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.all, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                
                self.title = "Hear button pressed"
            }, label: {
                
                Circle()
                    .fill(.white)
                    .frame(width: 80, height: 80)
                    .shadow(radius: 20)
                    .overlay(){
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .frame(width: 60, height: 60)
                            .foregroundColor(.red )
                    }
            })
            
            Button(action:{
                self.title = "Finish button pressed"
            } , label: {
                
                Text("finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding(.all, 20)
                    .background(
                        
                        Capsule()
                            .stroke(.gray, lineWidth: 3.0)
                    )
            })
        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
