//
//  ContentView.swift
//  Week4 AndroidTrivia
//
//  Created by Dawei Zhu on 2025/10/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Image("android_trivia")
                    .resizable()
                    .scaledToFit()
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            .padding()
            NavigationLink("Play"){}
                .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
