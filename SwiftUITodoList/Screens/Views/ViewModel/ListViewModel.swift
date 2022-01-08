//
//  ListViewModel.swift
//  SwiftUI-TodoList (iOS)
//
//  Created by iYezan on 08/01/2022.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    let itemKey: String = "items"
    init() {
        getItems()
    }
    // create
    func creatItem(title: String) {
        let newItem = ItemModel(title: title)
        items.append(newItem)
    }
    // delete
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    // save
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemKey)
        }
    }
    // get
    func getItems() {
        guard let data = UserDefaults.standard.data(forKey: itemKey),
              let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        self.items = savedItems
    }
    // update
    func updateItems(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
    // move
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
