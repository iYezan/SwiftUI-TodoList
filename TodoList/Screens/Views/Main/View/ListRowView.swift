//
//  ListView.swift
//  TodoList (iOS)
//
//  Created by iYezan on 07/01/2022.
//

import SwiftUI

struct ListRowView: View {
    
    let item: String
    var body: some View {
        
        HStack {
            Text(item)
            Spacer()
        }
    }
}
struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListRowView(item: "Item")
        }
        .previewLayout(.sizeThatFits)
    }
}
