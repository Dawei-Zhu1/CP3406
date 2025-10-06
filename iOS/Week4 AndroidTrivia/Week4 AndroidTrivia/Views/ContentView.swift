//
//  ContentView.swift
//  Week4 AndroidTrivia
//
//  Created by Dawei Zhu on 2025/10/3.
//
//~ Copyright 2018, The Android Open Source Project
//~
//~ Licensed under the Apache License, Version 2.0 (the "License");
//~ you may not use this file except in compliance with the License.
//~ You may obtain a copy of the License at
//~
//~     http://www.apache.org/licenses/LICENSE-2.0
//~
//~ Unless required by applicable law or agreed to in writing, software
//~ distributed under the License is distributed on an "AS IS" BASIS,
//~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//~ See the License for the specific language governing permissions and
//~ limitations under the License.


import SwiftUI

struct ContentView: View {
    //    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(){
            VStack {
                Image("android_trivia")
                    .resizable()
                    .scaledToFit()
                    .imageScale(.medium)
                    .foregroundStyle(.tint)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                NavigationLink("Play"){GameView()}
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink(destination: AboutView()) {
                        Text(.about)
                    }
                }
                ToolbarItem(placement: .topBarLeading){
                    NavigationLink(destination: RulesView()){
                        Text(.rules)
                    }
                }
            }.padding(32)
        }
    }
}

#Preview {
    ContentView()
}
