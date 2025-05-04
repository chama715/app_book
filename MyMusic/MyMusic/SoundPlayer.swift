//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by 高橋直斗 on 2025/05/02.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    let cymbalData = NSDataAsset(name:"cymbalSound")!.data
    var cymbalPlayer: AVAudioPlayer!
    
    let guitarData = NSDataAsset(name:"guitarSound")!.data
    var guitarPlayer: AVAudioPlayer!
        
        func cymbalPlay() {
            do {
                cymbalPlayer = try AVAudioPlayer(data: cymbalData)
                cymbalPlayer.play()
            } catch {
                print("音声の再生に失敗しました: \(error)")
            }
        }

    func guitarPlay() {
        do {
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("音声の再生に失敗しました: \(error)")
        }
    }
    }
