//
//  Sound.swift
//  introduce
//
//  Created by yuta on 2019/12/22.
//  Copyright © 2019 yuta. All rights reserved.
//

import Foundation
import AVFoundation

class Sound {
    
    var player:AVAudioPlayer?
    
    func playSound(fileName:String, extensionName:String) {
        
        let soundFile = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        do {
            player = try AVAudioPlayer(contentsOf: soundFile!)
            player?.play()
        } catch  {
            print("error")
        }
        
        
        
    }
    
    
    
    
}
