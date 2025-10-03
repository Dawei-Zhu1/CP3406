//
//  ContentView.swift
//  Dice Roller
//
//  Created by Dawei Zhu on 2025/10/2.
//

import SwiftUI

struct ContentView: View {
    let dice = Dice(numSides:6)
    @State private var rollResult = 1
    
    var body: some View {
        VStack {
            Image("dice_\(rollResult)")
                .resizable()
                .scaledToFit()
                .frame(width: 0x100, height: 0x100)
                .foregroundStyle(.tint)
            
            Button(
                action:{rollResult=dice.roll()}
            ){
                Text("Roll the dice!")
            }.buttonStyle(.automatic)
//            .padding()
//            .background(Color(red:0,green:0,blue:0.5))
//            .clipShape(Capsule())
        }
        
    }
}

#Preview {
    ContentView()
}
