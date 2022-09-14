//
//  LazyGridBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 22/08/22.
//

import SwiftUI

struct LazyGridBootcamp: View {
    
    let column : [GridItem] = [
        GridItem(.flexible() , spacing: 6, alignment: nil),
        GridItem(.flexible() , spacing: 6, alignment: nil),
        GridItem(.flexible() , spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        
        ScrollView () {
          
            Rectangle()
                .fill(.orange)
                .frame(height:400)
            
            LazyVGrid(
                columns: column,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                   
                    Section(header:
                                Text("Header Title 1")
                                .foregroundColor(.red)
                                .font(.largeTitle)
                                .frame(maxWidth:.infinity, alignment: .leading)
                                .background(.blue)
                                .padding()
                            
                    
                    ) {
                        
                        ForEach(0..<20) {index in
                            
                            Rectangle()
                                .frame(height: 150)
                            
                        }
                        
                        
                    }
                    
                    
                    Section(header:
                                Text("Header Title 2")
                                .foregroundColor(.red)
                                .font(.largeTitle)
                                .frame(maxWidth:.infinity, alignment: .leading)
                                .background(.blue)
                                .padding()
                            
                    
                    ) {
                        
                        ForEach(0..<20) {index in
                            
                            Rectangle()
                                .frame(height: 150)
                            
                        }
                        
                        
                    }
                    
            
                })
            
            
        }
    }
}

struct LazyGridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridBootcamp()
    }
}
