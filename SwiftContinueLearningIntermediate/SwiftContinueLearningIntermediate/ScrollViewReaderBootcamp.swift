//
//  ScrollViewReaderBootcamp.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Mohammad.Parvez on 15/09/22.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    
    @State var textfieldText : String = ""
    @State var scrollToIndex: Int = 0
    
    var body: some View {
        
        VStack {
            
            TextField("Enter Cell no", text: $textfieldText)
                .frame(height: 55)
                .border(.gray)
                .padding(.horizontal)
                .keyboardType(.numberPad)
                
            
            Button(action: {
                withAnimation(.spring()){
                    if let index = Int(textfieldText) {
                        scrollToIndex = index
                    }
                }
            }, label: {
                Text("Scroll Now")
            })
            
            ScrollView {
                ScrollViewReader { proxy in
                    ForEach(0..<50) { index in
                        Text("This is item #\(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth:.infinity)
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding(10)
                            .id(index)
                        
                    }
                    .onChange(of: scrollToIndex, perform: { value in
                        withAnimation(.spring()) {
                            proxy.scrollTo(value , anchor: nil)
                        }
                    })
                    
                }
                
            }
        }
    }
}

struct ScrollViewReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderBootcamp()
    }
}
