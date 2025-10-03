//
//  AboutView.swift
//  Week4 AndroidTrivia
//
//  Created by Dawei Zhu on 2025/10/3.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView{
            VStack {
                Image("about_android_trivia")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding(20)
                Text(.aboutText)
            }.padding()
        }
    }
}

#Preview {
    AboutView()
}
