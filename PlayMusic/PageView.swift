//
//  PageView.swift
//  PlayMusic
//
//  Created by user on 2022/03/24.
//

import SwiftUI

struct PageView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading){
            Image("MrsGreenApple")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: Color.gray, radius: 15)
            Text("Mrs Green Apple")
                .foregroundColor(Color.white)
                .font(.headline)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
            .aspectRatio(3/2,contentMode: .fit)
    }
}
