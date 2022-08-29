//
//  TextFiledBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 26/08/22.
//

import SwiftUI

struct TextFiledBootcamp: View {
    
    @State var textfiledText = "Par"
    @State var dataArray : [String] = []
    var body: some View {
       
        
        NavigationView {
            VStack {
               
                TextField("Enter text...", text: $textfiledText)
                    .padding(10)
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button(action: {
                    if isTextAppropiate() {
                        saveText()
                    }
                }, label: {
                    
                    Text("Save")
                        .padding()
                        .frame(maxWidth:.infinity)
                        .background(isTextAppropiate() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                    .disabled(!isTextAppropiate())
                
                ForEach(dataArray, id: \.self) { text in
                    
                    Text(text)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Textfiled Demo")
        }
    }
    
    func isTextAppropiate() -> Bool {
        
        if textfiledText.count > 3 {
            return true
        }
        
        return false
    }
    func saveText() {
        self.dataArray.append(textfiledText)
    }
}

struct TextFiledBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextFiledBootcamp()
        }
    }
}
