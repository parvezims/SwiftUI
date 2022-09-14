//
//  TabViewBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 27/08/22.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab : Int = 0
    
    var icons : [String] = ["house.fill","globe","heart.fill","person.fill"]
    var body: some View {
        
        
        TabView() {
            
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.red)
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.green)
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.purple)
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.pink)
            
            
            ForEach(icons, id: \.self) { icon in
                
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            
            
                
        }
        .background(
            RadialGradient(colors: [.red,.blue,.green], center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(.page)
        
        

//        TabView (selection: $selectedTab) {
//
//            HomeView(selectedTab: $selectedTab)
//
//                .tabItem{
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                } .tag(0)
//
//
//            Text("BROWSE")
//                .tabItem{
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//
//            Text("PROFILE")
//                .tabItem{
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }.tag(2)
//
//        }
//        .accentColor(.blue)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab : Int
    var body: some View {
        ZStack {
            
            Color.red.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Home View")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                
                Button(action: {
                    selectedTab = 2
                    
                }, label: {
                    
                    Text("Go To profile")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(.blue)
                        .cornerRadius(10)
                })
            }
        }
    }
}
