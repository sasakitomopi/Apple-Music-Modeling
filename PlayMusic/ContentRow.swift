//
//  ContentRow.swift
//  PlayMusic
//
//  Created by user on 2022/03/26.
//

import SwiftUI

struct ContentRow: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Songs")
                .font(.headline)
            ScrollView(.horizontal){
                MrsItem()
            }
        }
        .frame(height: 185)
    }
}

struct ContentRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentRow()
    }
}
