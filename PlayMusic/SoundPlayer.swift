//
//  SoundPlayer.swift
//  PlayMusic
//
//  Created by user on 2021/11/24.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    var musicContent : [String] = [
        "Adventures",
        "Blank",
        "Candyland",
        "Earth",
        "Fade",
        "Feel Good",
        "Hope",
        "Jim Yosef",
        "Light It Up",
        "My Heart",
        "Nekozilla",
        "On & On",
        "Shine",
        "Stmbolism"
    ]
    //Declare Variable
    var musicPlayer : AVAudioPlayer!
    
    func playMusic1() {
        
        do{
            //Declare MusicContents
            let musicData = NSDataAsset(name: musicContent[0])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
            
            PopUpImpl(soundPlayer: musicContent[0])
            
        }catch{
            print("You have a Error import AudioData!!")
        }
        
    }
    
    func playMusic2() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[1])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic3() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[2])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic4() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[3])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic5() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[4])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic6() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[5])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic7() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[6])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic8() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[7])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic9() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[8])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic10() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[9])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic11() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[10])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic12() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[11])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic13() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[12])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    
    func playMusic14() {
        
        do{
            
            //Declare MusicContects
            let musicData = NSDataAsset(name: musicContent[13])!.data
            
            //import AudioData
            musicPlayer = try AVAudioPlayer(data: musicData)
            
            //Play Music
            musicPlayer.play()
        }catch{
            print("You have a Error import AudioData!!")
        }
    }
    func pauseMusic() {
        //pause Music
        musicPlayer.pause()
    }
    
    func stopMusic(){
        //stop Music
        musicPlayer.stop()
    }
}
