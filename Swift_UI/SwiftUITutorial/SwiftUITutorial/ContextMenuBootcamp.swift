//
//  ContextMenuBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 26/08/22.
//

import SwiftUI

struct ContextMenuBootcamp: View {
   
    @State var backgroundColor : Color = .purple
    
    
    var body: some View {

        VStack (alignment: .leading, spacing: 10.0) {
            
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(20))
        .contextMenu(menuItems: {
            
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share Post",systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .pink
            }, label: {
                Text("Like Post")
                Image(systemName: "heart.fill")
            })
            
            Button(action: {
                backgroundColor = .black
            }, label: {
                Text("Report Post")
            })
            
        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
