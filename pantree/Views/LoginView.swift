//
//  LoginView.swift
//  pantree
//
//  Created by Anna Wu on 1/29/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
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
                        
                        Text("pantree")
                            .font(.system(size: 50))
                            .foregroundStyle(Color.white)
                            .bold()
                        
                        Text("grow your pantry")
                            .font(.system(size: 30))
                            .foregroundStyle(Color.white)
                            .padding(.bottom, 25)
                    }
                    //.padding(.bottom, 500)
                }
                .padding(.bottom, 30)
                // Login Form
                VStack {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage).foregroundStyle(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.none)
                        .padding()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding()
                    
                    Button {
                        viewModel.login()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(Color.green)
                            
                            Text("Log In")
                                .foregroundStyle(Color.white)
                                .bold()
                        }
                        .padding(.bottom, 50)
                    }
                }
                .padding()
                // Create Account
                ZStack {
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(Color.brown)
                        .ignoresSafeArea()
                    
                    VStack {
                        Text("Don't have an acount?")
                            .foregroundStyle(Color.white)
                        NavigationLink("Create An Account", destination: RegisterView())
                        .foregroundStyle(Color.green)
                    }
                    .padding(.bottom, 100)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
