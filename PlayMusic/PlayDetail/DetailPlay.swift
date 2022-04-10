//
//  DetailPlay.swift
//  PlayMusic
//
//  Created by user on 2022/04/01.
//

import SwiftUI

struct DetailPlay: View {
    @State var playMusic = true
    let soundPlayer : SoundPlayer
    var music : Music
    var body: some View {
        HStack{
            Image(systemName: "backward.fill")
                .font(.title)
                .padding()
            if(playMusic){
                Button {
                    soundPlayer.stopMusic()
                    playMusic.toggle()
                } label: {
                    Image(systemName: "pause.fill")
                        .font(.title)
                        .padding()
                }
            }else{
                Button {
                    soundPlayer.stopMusic()
                    playMusic.toggle()
                } label: {
                    Image(systemName: "play.fill")
                        .font(.title)
                        .padding()
                }
            }
            Image(systemName: "forward.fill")
                .font(.title)
                .padding()
        }
    }
}
