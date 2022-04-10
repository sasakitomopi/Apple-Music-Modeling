//
//  LibrarySource.swift
//  PlayMusic
//
//  Created by user on 2022/03/26.
//

import SwiftUI

struct LibrarySource: View {
    @State var playValue = false
    @State var offsetValue = false
    var music : Music
    var body: some View {
        VStack{
            HStack{
                LibraryRow(music: music)
            }
        }
        //        if(playValue){
        //            ZStack{
        //                PopUpImpl(soundPlayer: "What do you want play music?")
        //            }.offset(x: 0, y: offsetValue ? 0 : 300)
        //                .onAppear{
        //                    withAnimation(Animation.default.repeatCount(1)){
        //                        offsetValue.toggle()
        //                    }
        //                }
        //        }
    }
}
