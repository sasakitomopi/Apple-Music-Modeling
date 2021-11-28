//
//  SoundPlayer.swift
//  PlayMusic
//
//  Created by user on 2021/11/24.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    //music.linkのようにクラスのプロパティやクラスのメソッドを参照するときは関数の中で定義しなければならない
    var music : Music
    
    init(music:Music){
        self.music = music
    }
    //Declare Variable
    var musicPlayer : AVAudioPlayer!
    
    func playMusic() {
        
        do{
            //Declare SoundData
            let musicData = NSDataAsset(name: music.link)!.data
            
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
            //Declare SoundData
            let musicData = NSDataAsset(name: music.link)!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //stop Music
            musicPlayer.stop()
        }catch{
            print("You hava a Error pause AudioPlayer!!")
        }
    }
    
}
