//
//  PlayImpl.swift
//  PlayMusic
//
//  Created by user on 2022/01/23.
//

import SwiftUI

private var soundPlayer: SoundPlayer!
struct LibraryList : View {
    @EnvironmentObject var modelData : ModelData
    @State private var playMusic = false
    var music : [Music] {
        modelData.musics
    }
    var body: some View {
        VStack{
            NavigationView{
                List{
                    ForEach(music) { music in
                        Button {
                            soundPlayer = SoundPlayer(musicContent: music)
                            soundPlayer.playMusic()
                            playMusic.toggle()
//                            print("##", soundPlayer)
                        } label: {
                            LibrarySource(music: music)
                        }
                        .sheet(isPresented:$playMusic) {
//                            print("##", soundPlayer)
                            LibraryDetail(music: music , soundPlayer: soundPlayer)
                        }
                    }
                }
                .listStyle(InsetListStyle())
                .navigationTitle("Library")
            }
        }
    }
}
