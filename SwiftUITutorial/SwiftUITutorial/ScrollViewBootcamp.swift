//
//  ScrollViewBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 21/08/22.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        ScrollView (.vertical,  showsIndicators: false){
           
            LazyVStack {
                
                ForEach(0..<50) {index in
                    if index == 2 {
                        ScrollView (.horizontal,  showsIndicators: false){
                            LazyHStack {
                                
                                ForEach(0..<50) {index in
                                    
                                    Rectangle()
                                        .fill(.blue)
                                        .frame(height: 50)
                                }
                            }
                        }
                    }
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
