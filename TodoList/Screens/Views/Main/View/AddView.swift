//
//  AddView.swift
//  TodoList (iOS)
//
//  Created by iYezan on 07/01/2022.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ZStack {
            VStack {
            
                TextField("Type something here.", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                Spacer()
                Button("Save") {
                    //                Text("Save".uppercased())
                }
                Spacer(minLength: 200)
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                AddView()
            }
        }
    }
}
