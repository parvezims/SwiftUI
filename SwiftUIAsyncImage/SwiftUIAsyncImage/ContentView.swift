//
//  ContentView.swift
//  SwiftUIAsyncImage
//
//  Created by Mohammad.Parvez on 15/08/22.
//

import SwiftUI



struct ContentView: View {
    
    private let imageURL = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        // Mark: - 1. Basic
        // AsyncImage(url: URL(string: imageURL))
        
        // Mark: - 2. Scale Async Image
        //AsyncImage(url: URL(string: imageURL), scale: 3.0)
        
        // Mark: - 3. Image Placeholder
        AsyncImage(url: URL(string: imageURL)) { image in
            
            image
                .imageModifier()
            
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .iconModifier()
        }
        .padding(40)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension Image {
    func imageModifier() -> some View {
        
        self
            .resizable()
            .scaledToFit()
    }
    func iconModifier() -> some View {
        
        self
            .imageModifier()
            .frame(maxWidth:128)
            .foregroundColor(Color.purple)
            .opacity(0.5)
    }
}
