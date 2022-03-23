//
//  PopUPImpl.swift
//  PlayMusic
//
//  Created by user on 2022/01/23.
//

import SwiftUI

struct PopUpImpl: View {
    var soundPlayer : String
    
    var body: some View {
        HStack{
            Image(systemName: "play")
            Text(soundPlayer)
                .foregroundColor(.black)
                .font(.callout)
        }
    }
    struct PopUpImpl_Previews: PreviewProvider {
        static var previews: some View {
            PopUpImpl(soundPlayer: "Moonwalkeers")
                .previewDevice("iPhone 12 Pro")
                .previewLayout(.fixed(width: 300, height: 150))
        }
    }
}
