//
//  ContentView.swift
//  Week3
//
//  Created by Dawei Zhu on 2025/10/2.
//

import SwiftUI

struct ContentView: View {
    @State private var showLogin: Bool = false
    var body: some View {
        NavigationStack { // Navigation Stack is for iOS 16+
            ZStack{
                GeometryReader{g in
                    Image("pic1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: g.size.width)
                        .clipped()
                        .ignoresSafeArea()
                }
                
                VStack {
                    Text("CUP Corner")
                        .foregroundStyle(Color(red: 255/255, green: 0x9f/255, blue: 0/255))
                        .font(.largeTitle.bold())
                        .padding()
                        .background(
                            .ultraThinMaterial,
                            in:RoundedRectangle(cornerRadius: 16)
                        )
                    Spacer()
                    
                    NavigationLink("Login"){
                        LoginView()
                    }.buttonStyle(.borderedProminent)
                        .frame(maxWidth: .infinity)
                        .controlSize(.large)
                        .padding()
                }
            }.navigationTitle("JCUP Corner")
        }
    }
}


#Preview {
    ContentView()
}
