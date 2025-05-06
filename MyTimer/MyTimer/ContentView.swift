//
//  ContentView.swift
//  MyTimer
//
//  Created by 高橋直斗 on 2025/05/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.backgroundTimer)
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFit()
                VStack(spacing: 30.0) {
                    Text("残り10秒")
                        .font(.largeTitle)
                    HStack {
                        Button {
                        } label: {
                            Text("スタート")
                                .font(.title)
                                .foregroundStyle(Color.white)
                                .frame(width: 140, height: 140)
                                .background(Color.start)
                                .clipShape(Circle())
                        }
                        Button {
                        } label: {
                            Text("ストップ")
                                .font(.title)
                                .foregroundStyle(Color.white)
                                .frame(width: 140, height: 140)
                                .background(Color.stop)
                                .clipShape(Circle())
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        SettingView()
                    } label: {
                        Text("秒数設定")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
