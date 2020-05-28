//
//  PlaySOund.swift
//  Learn By Doing
//
//  Created by Yauheni Bunas on 5/27/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(soundName: String, type: String) {
    if let path = Bundle.main.path(forResource: soundName, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:  URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play sound.")
        }
    }
}
