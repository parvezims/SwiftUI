//
//  ListBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 25/08/22.
//

import SwiftUI

struct ListBootcamp: View {

    @State var fruits : [String] = ["Apple", "Graps", "Oranges", "Kiwi", "Mango"]
    @State var veggies : [String] = ["Potato", "Tomatto", "Carret", "Onion", "Chilli"]

    var body: some View {
        
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.red)
                    ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            //.frame(maxWidth: .infinity)
                            .font(.headline)
                            //.background(.pink)
                            .foregroundColor(.white)
                    }
                    .onDelete(perform: delete(indexSet:))
                    /* .onMove(perform: { indices , newOffset in
                     move(indices: indices, newOffset: newOffset) })  */
                    .onMove(perform: move)
                    .listRowBackground(Color.pink)
                }
                
                Section (
                    header: Text("Veggies").foregroundColor(.purple)) {
                        ForEach(veggies, id: \.self) { veg in
                            Text(veg.capitalized)
                                
                            
                    }
                    .listRowBackground(Color.gray)
                       
                }
            }
            .listStyle(.automatic)
            .navigationTitle("Grosery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
        
        /*
        List {
            Section(
                header: Text("Header 1")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    // 1
                    .onDelete { indexSet in
                        fruits.remove(atOffsets: indexSet)
                    }
                    // 2.
                    .onDelete { indexSet in
                        delete(indexSet: indexSet)
                    }
                    // 3.
                    .onDelete(perform: delete(indexSet:))
                    // 4.
                    .onDelete(perform: delete)
            } */
        
    }
    
    var addButton: some View {
        Button("Add"){
            add()
        }
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func delete( indexSet: IndexSet ) {
        
        fruits.remove(atOffsets: indexSet)
    }
    
    func add() {
        fruits.append("Cocunut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
