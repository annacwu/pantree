//
//  AddBranchView.swift
//  pantree
//
//  Created by Anna Wu on 1/24/24.
//

import SwiftUI

struct AddBranchView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var type = "member"
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("name of user", text: $name)
                    Picker("type", selection: $type){
                        Text("admin")
                        Text("member")
                        }
                    }
                
                Section {
                    Button("Save") {
                        let newBranch = Branch(name: name, type: type)
                        modelContext.insert(newBranch)
                        dismiss()
                        }
                    }
                
                }
                .navigationTitle("add branch")
                .toolbar{
                    Button("Close"){
                        dismiss()
                    }
                }
            }
        }
    }

#Preview {
    AddBranchView()
}
