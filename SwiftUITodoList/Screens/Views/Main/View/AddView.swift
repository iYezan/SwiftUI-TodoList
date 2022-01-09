//
//  AddView.swift
//  TodoList (iOS)
//
//  Created by iYezan on 07/01/2022.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var addViewModel: AddViewModel
    
    // MARK: BODY
    
    var body: some View {
        
        VStack(spacing: 100) {
            TextField("Type something here...", text: $addViewModel.textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
            
            Button(action: addViewModel.saveButtonPressed, label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(10)
            })
        }
    
        
        .onReceive(addViewModel.viewDismissalModePublisher) { shouldDismiss in
            if shouldDismiss {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
        .navigationTitle("Add an Item")
    }
}


// MARK: PREVIEW

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                AddView(addViewModel: AddViewModel())
            }
            
            .environmentObject(ListViewModel())
            
        }
    }
}
