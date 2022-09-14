//
//  TodoListApp.swift
//  TodoList
//
//  Created by Mohammad.Parvez on 02/09/22.
//

import SwiftUI
/*
 
 MVVM Architecture
 
 Model: data point
 View: UI
 ViewModel: Manages model for views
 
 */
@main
struct TodoListApp: App {
    
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(.stack)
            .environmentObject(listViewModel)
        }
    }
}
