//
//  AddLeafView.swift
//  pantree
//
//  Created by Anna Wu on 1/21/24.
//

import SwiftUI

struct AddLeafView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var date = ""
    @State private var low = false
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("name of item", text: $name)
                    TextField("date of purchase", text: $date)
                    Picker("running low?", selection: $low){
                        Text("yes")
                        Text("no")
                    }
                }
                
                Section {
                    Button("Save") {
                        let newLeaf = Leaf(name: name, date: date, low: low)
                        modelContext.insert(newLeaf)
                        dismiss()
                    }
                }
            }
            .navigationTitle("add leaf")
        }
    }
}

#Preview {
    AddLeafView()
}
