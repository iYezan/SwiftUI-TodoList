//
//  ContentView.swift
//  Shared
//
//  Created by iYezan on 07/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                List {
                    ListRowView(item: "Item")
                        .padding()
                }
            }
            .navigationTitle("Todo...")
            .navigationBarItems(
                trailing:
                    NavigationLink("Add", destination: AddView())
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        NavigationView {
            ContentView()
        }
    }
}
