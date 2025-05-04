//
//  ContentView.swift
//  MyMusic
//
//  Created by 高橋直斗 on 2025/05/02.
//

import SwiftUI

struct ContentView: View {
    let soundPlayer = SoundPlayer()
    var body: some View {
        ZStack {
            Image(.background)
                .backgroundModifier()
            
            HStack {
                Button{
                    soundPlayer.cymbalPlay()
                }label:{
                    Image(.cymbal)
                    
                    Button{
                        soundPlayer.guitarPlay()
                    }label:{
                        Image(.guitar)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
