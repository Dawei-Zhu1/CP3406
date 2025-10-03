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
            TextField("Email", text: .constant(""))
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            SecureField("Password", text: .constant(""))
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Button("Login") {}
                .buttonStyle(.borderedProminent)
                .padding()
        }
        .navigationTitle("Login")
    }
}

#Preview {
//    In the preview section, if with binding parameters, add parameter like this
    LoginView()
}
