//
//  ListView.swift
//  TodoList (iOS)
//
//  Created by iYezan on 07/01/2022.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    var body: some View {
        HStack {
            Text(item.title)
            Spacer()
        }
    }
}
struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListRowView(item: ItemModel(title: "Item 1"))
        }
        .previewLayout(.sizeThatFits)
    }
}
