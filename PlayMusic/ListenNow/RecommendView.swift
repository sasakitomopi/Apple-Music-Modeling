//
//  RecommendView.swift
//  PlayMusic
//
//  Created by user on 2022/03/26.
//

import SwiftUI

struct RecommendView: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Recommend Songs")
                .font(.headline)
            ScrollView(.horizontal,showsIndicators: false){
                RecommendItem()
            }
        }
        .frame(height: 185)
    }
}

struct RecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendView()
    }
}
