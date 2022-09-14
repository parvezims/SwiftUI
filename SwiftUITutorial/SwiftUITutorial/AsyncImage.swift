//
//  AsyncImage.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 29/08/22.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string:"https://picsum.photos/200")
    
    var body: some View {
       
        AsyncImage(url: url) {phase in
            
            switch phase {
                
            case .empty:
                ProgressView()
                
            case .success(let returnimage):
                returnimage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                
            case .failure(_):
                Image(systemName: "questionmark")
                    .font(.largeTitle)
                
            default:
                Image(systemName: "questionmark")
                    .font(.largeTitle)
            }
        }
        
//        AsyncImage(
//        url: url,
//        content: {returnimage in
//            returnimage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(10)
//
//        },
//        placeholder: {
//            ProgressView()
//        })
            
        
    }
}

struct AsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
