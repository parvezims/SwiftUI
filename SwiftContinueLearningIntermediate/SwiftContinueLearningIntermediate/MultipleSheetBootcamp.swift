//
//  MultipleSheetBootcamp.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Mohammad.Parvez on 22/09/22.
//

import SwiftUI



// 1. use a biniding
// 2. multiple sheet
// 3. use $item



// Below code is not a solution of multiple sheet
// this is common practice issue
// multisheet not working in this condingtion
// @Binding it bind the value
// Solution in MutipleSheetBootcamp1

struct RandomModel : Identifiable {
    
    var id = UUID().uuidString
    var title : String
    
}

struct MultipleSheetBootcamp: View {
    
    
    @State var selectedModel: RandomModel = RandomModel(title: "Random Model title")
    
    @State var isPresented : Bool = false
    @State var selectedIndex : Int  = 0
    
    var body: some View {

        VStack (spacing : 20) {
            Button(
                action: {
                    
                    selectedModel  = RandomModel(title: "One")
                    isPresented.toggle()
                    selectedIndex = 1
                },label: {
                    
                    Text("Present Sheet 1")
                        .font(.headline)
                        .fontWeight(.semibold)
                })
                .padding()
                .background(.red)
                .cornerRadius(10)
            
            Button(
                action: {
                    
                    selectedModel  = RandomModel(title: "Two")
                    isPresented.toggle()
                    selectedIndex  = 2

                },label: {
                    
                    Text("Present Sheet 2")
                        .font(.headline)
                        .fontWeight(.semibold)
                })
                .padding()
                .background(.red)
                .cornerRadius(10)
        }
        .sheet(isPresented: $isPresented,  content: {
            
            NextScreen(selectedModel: selectedModel)
            
        })
    }
}

struct NextScreen : View {
    
    var selectedModel : RandomModel
    var body: some View {
        Text(selectedModel.title)
            .font(.headline)
    }
}

struct MultipleSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetBootcamp()
    }
}
