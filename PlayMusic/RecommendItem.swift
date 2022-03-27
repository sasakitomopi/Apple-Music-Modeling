//
//  RecommendItem.swift
//  PlayMusic
//
//  Created by user on 2022/03/26.
//

import SwiftUI

struct RecommendItem: View {
    var body: some View {
        HStack{
            VStack{
                Image("Lemon")
                    .resizable()
                    .frame(width: 150, height: 150)
                Text("Lemon")
                    .font(.footnote)
            }
            VStack{
                Image("ILOVE")
                    .resizable()
                    .frame(width: 150, height: 150)
                Text("I LOVE..")
                    .font(.footnote)
            }
            VStack{
                Image("five")
                    .resizable()
                    .frame(width: 150, height: 150)
                Text("5")
                    .font(.footnote)
            }
            VStack{
                Image("SpringAndSummer")
                    .resizable()
                    .frame(width: 150, height: 150)
                Text("春と夏")
                    .font(.footnote)
            }
        }
    }
}

struct RecommendItem_Previews: PreviewProvider {
    static var previews: some View {
        RecommendItem()
    }
}
