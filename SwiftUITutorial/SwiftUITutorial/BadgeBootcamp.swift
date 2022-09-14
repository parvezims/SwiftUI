//
//  BadgeBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 29/08/22.
//

import SwiftUI

struct BadgeBootcamp: View {
    var body: some View {

        TabView {
            
            BadgeListView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("First")
                    
                }.badge(4)
            
            Color.purple
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Second")
                    
                }.badge(0)
            
            Color.yellow
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Second")
                    
                }.badge(1)
        }
    }
}

struct BadgeListView: View {
    
    var body: some View {
        List {
            // not working here no idea why ?
            Text("First") .badge(10)
            Text("First") .badge("New")
            Text("First") .badge("a")
            Text("First") .badge(22)
        }
    }
}

struct BadgeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBootcamp()
        
        // Working with seperate screen
        BadgeListView()
    }
}
