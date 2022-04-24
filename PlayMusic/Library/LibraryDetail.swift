//
//  LibraryDetail.swift
//  PlayMusic
//
//  Created by user on 2022/03/29.
//

import SwiftUI

struct LibraryDetail: View {
    @EnvironmentObject var viewModel : ModelData
    @State var music : Music
    @State var duration : Double = 1
    let soundPlayer : SoundPlayer
    var body: some View {
        ZStack{
            //set up backgroundColor
            LinearGradient(gradient: Gradient(colors: [.black, .gray]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                DetailImage(artist: $music.artist,song: $music.song)
                    .aspectRatio(3/2,contentMode: .fit)
                Spacer()
                    .frame(height: 150)
                HStack(alignment: .center, spacing: 10){
                    
                    Text(formatTime(sec: Int(duration * viewModel.slider)))
                    Spacer()
                    //if you changed seek value, "isEditing variable" changed true
                    Slider(value:$viewModel.slider, in: 0...100) { isEditing in
                        print(isEditing, viewModel.slider)
                        if !isEditing {
                            soundPlayer.seek(to: viewModel.slider)
                        }
                        
                    }
                    Button {
                        viewModel.liked.toggle()
                    } label: {
                        (viewModel.liked ? Image(systemName: "heart.fill") : Image(systemName: "heart")).resizable().frame(width: 20, height: 20)
                    }.padding(.horizontal,45)
                }.padding(.leading, 50)
                DetailPlay(soundPlayer : soundPlayer, music: music)
                    .frame(maxWidth: .infinity)
            }
        }
    }
    func formatTime(sec: Int) -> String {
        let h = sec / 3600 % 24
        let m = sec / 60 % 60
        let s = sec % 60

        if h == 0 {
            return String(format: "%d:%02d", m, s)
        }
        else {
            return String(format: "%d:%d:%02d", h, m, s)
        }
    }
}
