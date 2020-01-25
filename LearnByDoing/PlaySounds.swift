//
//  PlaySounds.swift
//  LearnByDoing
//
//  Created by Apple on 25/01/20.
//  Copyright © 2020 Rohit Prajapati. All rights reserved.
//

import Foundation
import AVFoundation

//MARK: AUDIO PLAYER
var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}
