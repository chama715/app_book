//
//
//  ContentView.swift
//  MyFirst
//
//  Created by 高橋直斗 on 2025/05/01.
//

import SwiftUI

struct ContentView: View {
    @State var outputText = "Hello,World"
    var body: some View {
        VStack {
            Text(outputText)
                .font(.largeTitle)
            Button("切り替えボタン") {
                outputText = "Hi,Swift!!"
            }
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
