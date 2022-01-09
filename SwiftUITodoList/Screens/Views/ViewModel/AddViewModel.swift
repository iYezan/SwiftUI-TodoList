//
//  AddViewModel.swift
//  SwiftUI-TodoList (iOS)
//
//  Created by iYezan on 08/01/2022.
//

import SwiftUI
import Combine

class AddViewModel: ObservableObject {
    
    @Environment(\.presentationMode) var presentationMode
    var viewDismissalModePublisher = PassthroughSubject<Bool, Never>()
    @Published var textFieldText: String = ""
    @Published var listViewModel = ListViewModel()
    
    func saveButtonPressed() {
        listViewModel.creatItem(title: textFieldText)
        self.shouldDismissView = true
    }
    
    private var shouldDismissView = false {
            didSet {
                viewDismissalModePublisher.send(shouldDismissView)
            }
        }
}
