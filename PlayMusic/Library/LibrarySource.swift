//
//  LibrarySource.swift
//  PlayMusic
//
//  Created by user on 2022/03/26.
//

import SwiftUI

struct LibrarySource: View {
    var music : Music
    var body: some View {
        VStack{
            HStack{
                Image("NEWMYNORMAL")
                    .resizable()
                    .frame(width: 70, height: 70)
                VStack(alignment: .leading){
                    Text(music.song)
                    Text(music.artist)
                        .foregroundColor(Color.gray)
                }
            }
        }
    }
}

//struct LibrarySource_Previews: PreviewProvider {
//
//    static var librarySource = ModelData().musics
//
//        static var previews: some View{
//
//        Group{
//            //JSONファイルの一行目を呼び出すためのコード
//            LibrarySource(music: librarySource[0])
//
//            //JSONファイルの二行目を呼び出すためのコード
//            LibrarySource(music: librarySource[1])
//
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
//    }
//}
