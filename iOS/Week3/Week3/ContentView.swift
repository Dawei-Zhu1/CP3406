//
//  ContentView.swift
//  Week3
//
//  Created by Dawei Zhu on 2025/10/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let loginBtn = Button("Login"){}
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
                        in:RoundedRectangle(cornerRadius: 10)
                    )
                Spacer()
                
                loginBtn.padding()
                    .buttonStyle(.glassProminent)
                    .controlSize(.large)
            }
        }
    }
}


#Preview {
    ContentView()
}
