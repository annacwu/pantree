//
//  AddLeafView.swift
//  pantree
//
//  Created by Anna Wu on 1/21/24.
//

import SwiftUI

struct AddLeafView: View {
    @StateObject var viewModel = AddLeafViewViewModel()
    @Binding var newItemAdded: Bool
    
    var body: some View {
        VStack {
            Text("new item")
                .font(.system(size: 32))
                .bold()
                .padding()
            
            Form {
                TextField("item", text: $viewModel.title)
                
                DatePicker("date added", selection: $viewModel.dateAdded, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .accentColor(.brown) // FIX THIS LATER
                
                Button(action: {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemAdded = false
                    } else {
                        viewModel.showAlert = true
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Color.brown)
                        
                        Text("Save")
                            .foregroundStyle(Color.white)
                            .bold()
                    }
                })
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert, content: {
                Alert(title: Text("Error"), message: Text("Please fill in all fields and select a date today or earlier."))
            })
        }
    }
}
//    @Environment(\.modelContext) var modelContext
//    @Environment(\.dismiss) var dismiss
//    
//    let users = ["anna", "gabby", "jmo", "lyell"]
//    @State private var name = ""
//    @State private var date = ""
//    @State private var low = "yes"
//    // fix this later
//    @State private var user = "anna"
//    
//    
//    var body: some View {
//        NavigationStack {
//            Form {
//                Section {
//                    TextField("name of item", text: $name)
//                    TextField("date of purchase", text: $date)
//                    Picker("running low?", selection: $low){
//                        Text("yes")
//                        Text("no")
//                    }
//                    Picker("owner?", selection: $user){
//                        ForEach(users.indices) { index in
//                            Text(users[index])
//                        }
//                    }
//                }
//                
//                Section {
//                    Button("Save") {
////                        let newLeaf = Leaf(name: name, date: date, low: low, user: user)
////                        modelContext.insert(newLeaf)
//                        dismiss()
//                    }
//                }
//            }
//            .navigationTitle("add leaf")
//            .toolbar{
//                Button("Close"){
//                    dismiss()
//                }
//            }
//        }
//    }

#Preview {
    AddLeafView(newItemAdded: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
