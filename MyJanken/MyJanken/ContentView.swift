//
//  ContentView.swift
//  MyJanken
//
//  Created by 高橋直斗 on 2025/05/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(.gu)
                .resizable()
                .scaledToFit()
            Text("グー")
            
            Button {
                print("タップされたよ！")
            } label: {
                Text("じゃんけんをする")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
