//
//  TextEditorBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 27/08/22.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText:String = "This is starting text"
    @State var saveText : String = ""
    var body: some View {

        NavigationView {
            
        
            VStack{
                TextEditor(text: $textEditorText)
                    //.background(.red)
                    //.foregroundColor(.yellow)
                    .frame(height:250)
                    .colorMultiply(.white)
                
                Button(action: {
                    
                    saveText = textEditorText
                }, label: {
                    
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth:.infinity)
                        .font(.headline)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(10)
                })
                
                Text(saveText)
                Spacer()

            }
            .padding()
            .background(.green)
            .navigationTitle("TextEditor")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
