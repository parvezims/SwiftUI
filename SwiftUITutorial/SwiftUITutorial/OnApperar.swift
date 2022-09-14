//
//  OnApperar.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 28/08/22.
//

import SwiftUI

struct OnApperar: View {
    
    @State var myString: String = "MyString"
    @State var count : Int = 0
    var body: some View {
        
        NavigationView {
            
            ScrollView{
                Text(myString)
                LazyVStack {
                    ForEach(0..<50) { index in
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 300, height: 200)
                            .padding()
                            .onAppear(perform: {
                                count += 1
                            })
                            .onDisappear(perform: {
                                count -= 1
                            })
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() +  5) {
                    myString = "This is new Text "
                }
            })
            
            .onDisappear(perform: {
                myString = "This after last "
            })
            
            .navigationTitle("Title \(count)")
        }
    }
}

struct OnApperar_Previews: PreviewProvider {
    static var previews: some View {
        OnApperar()
    }
}
