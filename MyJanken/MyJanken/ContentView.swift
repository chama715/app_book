//
//  ContentView.swift
//  MyJanken
//
//  Created by 高橋直斗 on 2025/05/01.
//

import SwiftUI

struct ContentView: View {
    @State var jankenNumber = 0
    var body: some View {
        
        VStack {
            if jankenNumber == 0{
                Spacer()
                Text("これからじゃんけんをします！")
            }else if jankenNumber == 1{
                Image(.gu)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("グー")
                    .padding(.bottom)
            }else if jankenNumber == 2{
                Image(.choki)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            }else{
                Image(.pa)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            
            Button {
                var newJankenNumber = 0
                repeat{
                    newJankenNumber = Int.random(in: 0...3)
                }while jankenNumber == newJankenNumber
                
                jankenNumber = newJankenNumber
            } label: {
                Text("じゃんけんをする")
                    .padding(.bottom)
                    .frame(maxWidth: .infinity)
                    .frame(height:100)
                    .font(.title)
                    .background(.pink)
                    .foregroundStyle(.white)
            }
            
        }
    }
}
#Preview {
    ContentView()
}
