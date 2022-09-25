//
//  MultisheetBootcamp2.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Mohammad.Parvez on 23/09/22.
//

import SwiftUI

struct RandomModel2 : Identifiable {
    var id = UUID().uuidString
    var title : String
}

// Use it when multiple same type multiple sheet

struct MultipleSheetBootcamp2: View {
    
    @State var selectedModel : RandomModel2? = nil
    var body: some View {
        
        ScrollView {
            VStack (spacing: 20){
                ForEach(0..<50) {index in
                    Button("Button \(index)") {
                        selectedModel = RandomModel2(title: "\(index)")
                    }
                }
            }
            .sheet(item: $selectedModel) { model in
                NextScreen2(selectedModel: model)
            }
        }
    }
}

struct NextScreen2 : View {
    
    var selectedModel : RandomModel2
    var body: some View {
        Text(selectedModel.title)
            .font(.headline)
    }
}

struct MultisheetBootcamp2_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetBootcamp2()
    }
}
