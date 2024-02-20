//
//  ProfileView.swift
//  pantree
//
//  Created by Anna Wu on 1/29/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(width: 125, height: 125)
                    .padding()
                
                // Info: Name, Email, Member since
                VStack(alignment: .leading) {
                    HStack {
                        Text("Name: ")
                            .bold()
                        Text("name")
                    }
                    .padding()
                    HStack {
                        Text("Email: ")
                            .bold()
                        Text("name")
                    }
                    .padding()
                    HStack {
                        Text("Member since: ")
                            .bold()
                        Text("name")
                    }
                    .padding()
                }
                .padding()
                
                // Sign out
                Button {
                    viewModel.logOut()
                } label: {
                    Text("Log Out")
                }
                .padding()
            }
            .navigationTitle("profile")
        }
    }
}

#Preview {
    ProfileView()
}
