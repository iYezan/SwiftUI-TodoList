//
//  TodoListApp.swift
//  Shared
//
//  Created by iYezan on 07/01/2022.
//

import SwiftUI

@main
struct SwiftUITodoList: App {
    @StateObject var listViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
