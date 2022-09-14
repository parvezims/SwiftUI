//
//  ListSwipeActionBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 30/08/22.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Orange", "Banana", "Kiwi"]
    var body: some View {
        NavigationView {
            List {
                
                ForEach(fruits, id: \.self) {fruit in
                    Text(fruit.uppercased())
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button("Archive") {
                                
                            }
                            .tint(.green)
                            Button("Save") {
                                
                            }
                            .tint(.red)
                            Button("Jump") {
                                
                            }
                            .tint(.gray)
                        }
                    
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button("Delete") {
                                
                            }
                            .tint(.green)
                            Button("Goto") {
                                
                            }
                            .tint(.red)
                            Button("Add new") {
                                
                            }
                            .tint(.gray)
                        }
                }
                .onDelete(perform: { indexSet in
                    deleteFruits(indexSet: indexSet)
                })
            }
            .navigationTitle("Fruits")
        }
    }
    
    func deleteFruits(indexSet: IndexSet) {
        self.fruits.remove(atOffsets: indexSet)
    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}
