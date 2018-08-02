//
//  SoundEffect.swift
//  Movies
//
//  Created by Serényi  Zsófia on 2018. 07. 10..
//  Copyright © 2018. Serényi  Zsófia. All rights reserved.
//

import UIKit
import AudioToolbox

class PlaySoundViewController: UIViewController {
    
    var soundURL: NSURL?
    var soundID: SystemSoundID = 0
    
    func playSoundEffect(for status: String) {
        let filePath = Bundle.main.path(forResource: status, ofType: "mp3")
        soundURL = NSURL(fileURLWithPath: filePath!)
        if let url = soundURL {
            AudioServicesCreateSystemSoundID(url, &soundID)
            AudioServicesPlaySystemSound(soundID)
        }
    }
}



