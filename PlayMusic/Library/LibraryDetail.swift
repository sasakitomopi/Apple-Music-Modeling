//
//  LibraryDetail.swift
//  PlayMusic
//
//  Created by user on 2022/03/29.
//

import SwiftUI

struct LibraryDetail: View {
    @EnvironmentObject var viewModel : ModelData
    var music : Music
    let soundPlayer : SoundPlayer
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.black, .gray]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                DetailImage(music: music)
                    .aspectRatio(3/2,contentMode: .fit)
                Spacer()
                    .frame(height: 150)
                HStack(alignment: .center, spacing: 12){
                    Text("01:34").foregroundColor(Color.gray)
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
                    
                }
                HStack{
                    
                }
                DetailPlay(soundPlayer : soundPlayer, music: music)
                    .frame(maxWidth: .infinity)
            }
        }
    }
}
