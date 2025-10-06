//
//  GameOverView.swift
//  Week4 AndroidTrivia
//
//  Created by Dawei Zhu on 2025/10/3.
//

import SwiftUI

struct GameOverView: View {
    @Environment(\.dismiss) var dismiss
//    @Binding var path: NavigationPath
    var body: some View {
        ZStack {
            VStack {
                Image(.tryAgain)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding()
                Button(.tryAgain) {
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .padding()
            }.padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gameOverBackground)
    }
}

struct GameOverView_Previews: PreviewProvider {
    static var previews: some View {
        GameOverView()
    }
}

