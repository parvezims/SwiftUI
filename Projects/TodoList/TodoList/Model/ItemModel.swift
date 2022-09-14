//
//  ItemModel.swift
//  TodoList
//
//  Created by Mohammad.Parvez on 08/09/22.
//

import Foundation


struct ItemModel : Identifiable , Codable {
    
    let id: String
    let title: String
    let isCompleted:Bool
    
    
    init(id: String = UUID().uuidString, title:String , isCompleted:Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateItemModel() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
