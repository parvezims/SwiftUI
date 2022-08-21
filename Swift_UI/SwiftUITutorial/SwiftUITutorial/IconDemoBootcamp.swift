//
//  IconDemoBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 17/08/22.
//

import SwiftUI

struct IconDemoBootcamp: View {
    var body: some View {
        //Image(systemName: "heart.fill")
        //Image(systemName: "paperplane.fill")
         //Image(systemName: "books.vertical")
        //Image(systemName: "xmark")
        Image(systemName: "person.fill.badge.plus")
        //Image(systemName: "paperplane.fill")
        
            .renderingMode(.original)
            .font(.largeTitle)
         //   .resizable()
        //    .scaledToFill()
        //     .scaledToFit()
        
            //.aspectRatio(contentMode: .fit)
        
            //.font(.caption) 
            //.font(Font.system(size: 200))
            .foregroundColor(.red)
            .frame(width: 50, height: 40)
            //.clipped()
        
        
        
        
    }
}

struct IconDemoBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconDemoBootcamp()
    }
}
