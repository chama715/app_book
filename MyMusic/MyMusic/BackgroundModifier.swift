//
//  BackgroundModifier.swift
//  MyMusic
//
//  Created by 高橋直斗 on 2025/05/02.
//
import SwiftUI

extension Image{
    func backgroundModifier() -> some View{
        self
            .resizable()
            .ignoresSafeArea()
            .scaledToFit()
    }
}
