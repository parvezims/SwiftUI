//
//  InitializerBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 20/08/22.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count : Int
    let title: String
    
    init(count:Int, fruit:Fruits) {
        
        self.count = count
        switch fruit {
        case .apple :
            self.title = "Apple"
            self.backgroundColor = .red
        case .orange :
            self.title = "Oranges"
            self.backgroundColor = .yellow
        }
    }
    
    enum Fruits {
        case apple
        case orange
    }
    
    var body: some View {
        
        VStack () {
            Text( "\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text( "\(title)")
                .font(.headline)
                .foregroundColor(.white)
            
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)

    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {

        HStack {
            InitializerBootcamp(count: 5, fruit: .orange)
            InitializerBootcamp(count: 20, fruit: .apple)
        }
    }
}
