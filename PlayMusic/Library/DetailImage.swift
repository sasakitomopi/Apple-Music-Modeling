//
//  DetailImage.swift
//  PlayMusic
//
//  Created by user on 2022/04/16.
//

import SwiftUI

struct DetailImage: View {
    @Binding var artist : String
    @Binding var song : String
    var body: some View {
        Image("ncs")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 350, height: 400)
            .cornerRadius(30)
        VStack(alignment: .leading){
            HStack{
                Text(song)
                    .frame(maxWidth:.infinity,alignment: .leading)
            }
            HStack{
                Button {
                    //show artist description
                } label: {
                    Text(artist)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    
                }
            }
        }
        
    }
}
struct DetailImage_Previews: PreviewProvider {
    @State static var music = "Test"
    @State static var song = "song"
    static var previews: some View {
        DetailImage(artist: $music,song: $song)
        
    }
}
