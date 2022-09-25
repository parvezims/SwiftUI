//
//  MutipleSheetBootcamp1.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Mohammad.Parvez on 22/09/22.
//

import SwiftUI

struct RandomModel1 : Identifiable {
    var id = UUID().uuidString
    var title : String
}

struct MutipleSheetBootcamp1: View {
    
    @State var selectedModel: RandomModel1? = nil
   // @State var showSheet1 : Bool = false
   // @State var showSheet2 : Bool = false
    
    var body: some View {
        
        VStack (spacing : 20) {
            Button(
                action: {
                    //showSheet1.toggle()
                    selectedModel = RandomModel1(title: "One")

                },label: {
                    
                    Text("Present Sheet 1")
                        .font(.headline)
                        .fontWeight(.semibold)
                })
                .padding()
                .background(.red)
                .cornerRadius(10)
//                .sheet(isPresented: $showSheet1,  content: {
//                    NextScreen1(selectedModel: RandomModel1(title: "One"))
//                })
            
            Button(
                action: {
                   // showSheet2.toggle()
                    selectedModel = RandomModel1(title: "Two")
                },label: {
                    
                    Text("Present Sheet 2")
                        .font(.headline)
                        .fontWeight(.semibold)
                })
                .padding()
                .background(.red)
                .cornerRadius(10)
//                .sheet(isPresented: $showSheet2, content: {
//                    NextScreen1(selectedModel: RandomModel1(title: "Two"))
//                })
        }
        .sheet(item: $selectedModel) { model in
            
            NextScreen1(selectedModel: model)
        }
    }
}

struct NextScreen1 : View {
    
    var selectedModel : RandomModel1
    var body: some View {
        Text(selectedModel.title)
            .font(.headline)
    }
}



struct MutipleSheetBootcamp1_Previews: PreviewProvider {
    static var previews: some View {
        MutipleSheetBootcamp1()
    }
}
