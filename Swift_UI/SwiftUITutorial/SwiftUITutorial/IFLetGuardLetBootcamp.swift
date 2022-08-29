//
//  IFLetGuardLetBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 28/08/22.
//

import SwiftUI

struct IFLetGuardLetBootcamp: View {
    
    @State var currentUserID : String? = nil
    @State var displayText: String? = nil
    @State var isLoading : Bool = false
   
    var body: some View {

        NavigationView {
            
            VStack {
                
                Text("Here we are practicing safe coding")
                
                if let text = displayText {
                    
                    Text(text )
                        .font(.largeTitle)
                }
                
                if isLoading {
                    ProgressView()
                }
              
                Spacer()
            }
            
            .navigationTitle("If Let")
            .onAppear(perform: {
                loadDate()
            })
            
        }
    }
    
    func loadDate() {
        
        if let userID = currentUserID {
            
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                displayText = "This is new Data \(userID)"
                isLoading = false
            }
        }
        else {
            displayText = "This is new Data :::Error"
            isLoading = false
        }
    }
    
    
    func loadDateWithGuard() {
        
        guard let userID = currentUserID else {
            
            displayText = "This is new Data :::Error"
            isLoading = false
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            displayText = "This is new Data \(userID)"
            isLoading = false
        }
    }
}

struct IFLetGuardLetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IFLetGuardLetBootcamp()
    }
}
