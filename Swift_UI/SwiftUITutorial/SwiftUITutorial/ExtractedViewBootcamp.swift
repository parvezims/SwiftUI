//
//  ExtractedViewBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 23/08/22.
//

import SwiftUI

struct ExtractedViewBootcamp: View {
    var body: some View {

        ZStack {
            Color.purple.edgesIgnoringSafeArea(.all)
            subContentLayer
        }
    }
    
    var subContentLayer : some View {
       
        HStack {
            
            MyItem(title:"Apples", count:4, backcolor: .white)
            MyItem(title:"Oranges", count:2, backcolor: .blue)
            MyItem(title:"Pears", count:4, backcolor: .gray)
        }
    }
}

struct ExtractedViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedViewBootcamp()
    }
}

struct MyItem: View {
    
    let title : String
    let count: Int
    let backcolor: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
            Text(title)
                .font(.headline)
            
        }
        .padding()
        .background(.red)
        .foregroundColor(backcolor)
        .cornerRadius(20)
    }
}
