//
//  AddLeafView.swift
//  pantree
//
//  Created by Anna Wu on 1/21/24.
//

import SwiftUI

struct AddLeafView: View {
    @StateObject var viewModel = AddLeafViewViewModel()
    
    var body: some View {
        VStack {
            Text("new item")
                .font(.system(size: 32))
                .bold()
            
            Form {
                TextField("item", text: $viewModel.title)
                
                DatePicker("date added", selection: $viewModel.dateAdded, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
//                Section {
//                    Button("Save"){
//                        viewModel.save()
//                    }
//                    .background(Color.pink)
//                }
            }
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
    AddLeafView()
}
