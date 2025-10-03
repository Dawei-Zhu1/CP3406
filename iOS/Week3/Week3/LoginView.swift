//
//  LoginView.swift
//  Week3
//
//  Created by Dawei Zhu on 2025/10/3.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .padding()
            
            TextField("Email", text: .constant(""))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Password", text: .constant(""))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {}) {
                Text("Login")
            }.buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    LoginView()
}
