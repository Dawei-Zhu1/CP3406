//
//  RulesView.swift
//  Week4 AndroidTrivia
//
//  Created by Dawei Zhu on 2025/10/3.
//

import SwiftUI

struct RulesView: View {
    var body: some View {
        ScrollView{
            Image(.triviaRules)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .padding()
            Text(.ruleText).padding()
        }.safeAreaPadding()
    }
}

#Preview {
    RulesView()
}
