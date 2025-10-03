//
//  GameWonView.swift
//  Week4 AndroidTrivia
//
//  Created by Dawei Zhu on 2025/10/3.
//

import SwiftUI

struct GameWonView: View {
    var body: some View {
        ZStack {
            VStack{
                Image("you_win").resizable().scaledToFit()
//                Text(.congratulations).font(.largeTitle)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(Color.youWinBackground)
    }
}

#Preview {
    GameWonView()
}
