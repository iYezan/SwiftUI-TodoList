//
//  ContentView.swift
//  Shared
//
//  Created by iYezan on 07/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    // 1
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        VStack {
            List {
                ForEach(listViewModel.items) { item in
                    // ListRowView 2
                    ListRowView(item: item)
                        .padding()
                }
                .onDelete(perform: listViewModel.deleteItem)
                .onMove(perform: listViewModel.moveItem)
            }
            .navigationTitle("Todo...")
            .navigationBarItems(
                trailing:
                    NavigationLink("Add", destination: AddView(addViewModel: AddViewModel()))
            )
        }
        .onAppear {
            listViewModel.getItems()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
        .environmentObject(ListViewModel())
    }
}
