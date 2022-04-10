//
//  LibraryRow.swift
//  PlayMusic
//
//  Created by user on 2022/03/26.
//

import SwiftUI

struct LibraryRow: View {
    var music : Music
    var body: some View {
        VStack{
            HStack{
                Image("ncs")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(3)
                VStack(alignment: .leading){
                    Text(music.song)
                    Text(music.artist)
                        .foregroundColor(Color.gray)
                }
            }
        }
    }
}

