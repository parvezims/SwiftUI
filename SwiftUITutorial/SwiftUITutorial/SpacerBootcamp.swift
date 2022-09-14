//
//  SpacerBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 19/08/22.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        
        VStack {
            
            HStack (spacing: 0){
                
                Image(systemName:"xmark")
                Spacer()
                    .frame(height: 10)
                    .background(.yellow)
                Image(systemName: "gear")
                
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
                .frame(width: 10)
                .background(.yellow)
              
            
            Rectangle()
                .fill(.green)
                .frame( height: 55)
                
            
        }
        .background(.red)
        
        
        
//        HStack (spacing: 0){
//
//
//            Spacer()
//                .frame(height: 10)
//                .background(.red)
//
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//
//
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(.red)
//
//        }
//        .background(.yellow )
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
