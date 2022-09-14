//
//  ListViewModel.swift
//  TodoList
//
//  Created by Mohammad.Parvez on 09/09/22.
//

import Foundation


class ListViewModel : ObservableObject{
    
    @Published var items:[ItemModel] = [] {
        didSet {
            saveItem()
        }
    }
    
    let keyItemList : String = "Item_List"
    init() {
        getItem()
    }
    
    
    func getItem() {

//        let newItems  = [ ItemModel( title:"First Item" , isCompleted: true),
//          ItemModel( title:"Second Item" , isCompleted: false),
//          ItemModel( title:"Third" , isCompleted: true)
//        ]
        
//        guard let data = UserDefaults.standard.data(forKey: keyItemList) else { return }
//        guard let itemList = try? JSONDecoder().decode([ItemModel].self, from: data) else { return }
//
        
        guard let data = UserDefaults.standard.data(forKey: keyItemList),
              let itemList = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        self.items = itemList
    }
    
    func deleteItem(indexset: IndexSet) {
        items.remove(atOffsets: indexset)
    }
    
    func moveItem(indexset:IndexSet, offset: Int) {
        items.move(fromOffsets: indexset, toOffset: offset)
    }
    
    func addItem(_ title:String) {
        items.append( ItemModel(title: title, isCompleted: false))
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id } ) {
            items[index] = item.updateItemModel()
        }
    }
    
    func saveItem() {
        if let data = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(data, forKey: keyItemList)
        }
    }
    
}
