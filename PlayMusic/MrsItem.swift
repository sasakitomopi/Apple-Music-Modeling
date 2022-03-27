//
//  MrsItem.swift
//  PlayMusic
//
//  Created by user on 2022/03/26.
//

import SwiftUI

struct MrsItem: View {
    var body: some View {
        HStack{
            VStack{
                Image("NEWMYNORMAL")
                    .resizable()
                    .frame(width: 150, height: 150)
                Text("NEWMYNORMAL")
                    .font(.footnote)
            }
            VStack{
                Image("ROMANRICISM")
                    .resizable()
                    .frame(width: 150, height: 150)
                Text("ロマンチシズム")
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

struct MrsItem_Previews: PreviewProvider {
    static var previews: some View {
        MrsItem()
    }
}
