//
//  SoundPlayer.swift
//  PlayMusic
//
//  Created by user on 2021/11/24.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    var music : Music
    
    
    init(music:Music){
        self.music = music
    }
    
    //Declare SoundData
    var musicData = NSDataAsset(name:music.link)!.data
    
    
    //Declare Variable
    var musicPlayer : AVAudioPlayer!
    
    func playMusic() {
        
        do{
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
        
    }
    
    func pauseMusic() {
        do{
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //stop Music
            musicPlayer.stop()
        }catch{
            print("You hava a Error pause AudioPlayer!!")
        }
    }
    
}
