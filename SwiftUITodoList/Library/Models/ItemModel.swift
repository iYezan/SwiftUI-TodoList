//
//  ItemModel.swift
//  SwiftUI-TodoList (iOS)
//
//  Created by iYezan on 08/01/2022.
//

import Foundation

struct ItemModel: Codable, Identifiable {
    // MARK: PROPERTIES
    var id = UUID()
    let title: String
    
    func updateCompletion() -> ItemModel {
        return ItemModel(title: title)
    }
}
