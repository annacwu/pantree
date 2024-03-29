//
//  RegisterView.swift
//  pantree
//
//  Created by Anna Wu on 1/29/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundStyle(Color.brown)
                    .ignoresSafeArea()
                
                VStack {
                    Image(decorative: "tree")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Text("register")
                        .font(.system(size: 45))
                        .foregroundStyle(Color.white)
                        .bold()
                    
                    Text("enter your information below")
                        .font(.system(size: 25))
                        .foregroundStyle(Color.white)
                        .padding(.bottom, 25)
                }
            }
            .padding(.bottom, 30)
            // Login Form
            VStack {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .padding()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                    .padding()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                
                Button {
                    viewModel.register()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Color.green)
                        
                        Text("Create Account")
                            .foregroundStyle(Color.white)
                            .bold()
                    }
                    .padding(.bottom, 0)
                }
            }
            .padding()
            .offset(y: -30)
            // Create Account
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.brown)
                    .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    RegisterView()
}
