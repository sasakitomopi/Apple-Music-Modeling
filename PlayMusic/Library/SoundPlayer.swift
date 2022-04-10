//
//  SoundPlayer.swift
//  PlayMusic
//
//  Created by user on 2021/11/24.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    private var musicContent : Music
    
    init(musicContent : Music){
        self.musicContent = musicContent
    }
    
    //Declare Variable
    private var musicPlayer : AVAudioPlayer! {
        didSet {
//            print("!!!", musicPlayer)
        }
    }
    
    func playMusic(){
//        print("!!!", self)
        do{
            //Declare MusicContent
            let musicData = NSDataAsset(name: musicContent.song)!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            musicPlayer.stop()
            musicPlayer.currentTime = 0.0
            musicPlayer.play()
            
        }catch{
            print("You hava a Error import AudioData!!")
        }
    }
    
//    func pauseMusic() {
//        do{
//            //Declare MusicContent
//            let musicData = NSDataAsset(name: musicContent.song)!.data
//
//            //import AudioData
//            musicPlayer = try AVAudioPlayer(data: musicData)
//
//            //pause Music
//            musicPlayer.pause()
//        }catch{
//            print("You hava a Error import AudioData!!")
//        }
//
//    }
//
    func stopMusic(){
//        //pause Music
//        do{
//            let musicData = NSDataAsset(name: musicContent.song)!.data
//
//            //import AudioData
//            musicPlayer = try AVAudioPlayer(data: musicData)
//
//            if(musicPlayer.isPlaying){
//                //stop Music
//                musicPlayer.stop()
//            }
//        }catch{
//            print("You hava a Error import AudioData!!")
//        }
    }
    
//    func startSynchronizedPlayback(){
//        let musicData = NSDataAsset(name: musicContent.song)!.data
//
//        //import AudioData
//        do{
//            musicPlayer = try AVAudioPlayer(data: musicData)
//            musicPlayer.play(atTime: 50.0)
//        }catch{
//            print("You hava a Error import AudioData!!")
//        }
//
//    }
    
    func seek(to ratio: Double) {
//        print("!!!", self)
//        print("!!!", musicPlayer.duration)
//        print(musicPlayer.duration * ratio * 0.01)
        musicPlayer.currentTime = musicPlayer.duration * ratio * 0.01
//        musicPlayer.play(atTime: musicPlayer.duration * ratio * 0.01)
        musicPlayer.play()
    }
}
