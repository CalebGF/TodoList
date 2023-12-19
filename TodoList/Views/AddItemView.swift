//
//  AddItemView.swift
//  TodoList
//
//  Created by Caleb Gonzalez on 16/12/23.
//

import SwiftUI

struct AddItemView: View {
    
    @Environment(\.presentationMode) var presentedScreen
    @EnvironmentObject var listViewModel: ListViewModel
    @State var newItemTextField: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Add your new item here...", text: $newItemTextField)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button(action: saveButtonPressed, label: {
                    Text("save".uppercased())
                        .foregroundStyle(Color(.white))
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an item")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: newItemTextField)
            presentedScreen.wrappedValue.dismiss()
        }
        
    }
    
    func textIsAppropriate() -> Bool {
        print("Pasando por la func")
        if newItemTextField.count < 3 {
            alertTitle = "Your new To-Do item must be at least 3 characters long!!😰"
            print("Pasando por el if ")
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationStack {
        AddItemView()
    }
    .environmentObject(ListViewModel())
}
