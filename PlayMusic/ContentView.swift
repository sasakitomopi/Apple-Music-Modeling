//
//  ContentView.swift
//  PlayMusic
//
//  Created by user on 2021/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainView()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone 12 Pro")
        }
    }
}

struct MainView: View{
    init(){
        
    }
    @State var offsetValue = false
    @State var playValue = false
    @State var currentPage = 1
    
    var body : some View{
        TabView(selection: $currentPage){
            Text("test1")
                .tabItem{
                    VStack{
                        Image(systemName: "play.circle.fill")
                            .foregroundColor(Color.red)
                        Text("今すぐ聴く")
                    }
                }.tag(1)
            
            Text("test2")
                .tabItem{
                    VStack{
                        Image(systemName: "archivebox")
                            .foregroundColor(Color.gray)
                        Text("見つける")
                    }
                }.tag(2)
            
            Text("test3")
                .tabItem{
                    VStack{
                        Image(systemName: "dot.radiowaves.left.and.right")
                            .foregroundColor(Color.gray)
                        Text("ラジオ")
                    }
                }.tag(3)
            
            PlayImpl()
                .tabItem{
                    VStack{
                        Image(systemName: "music.note.list")
                            .foregroundColor(Color.gray)
                        Text("ライブラリ")
                    }
                }.tag(4)
            
            Text("test5")
                .tabItem{
                    VStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.gray)
                        Text("検索")
                    }
                }.tag(5)
            
        }

        if(playValue){
            ZStack{
                PopUpImpl(soundPlayer: "What do you want play music?")
            }.offset(x: 0, y: offsetValue ? 0 : 300)
                .onAppear{
                    withAnimation(Animation.default.repeatCount(1)){
                        offsetValue.toggle()
                    }
                }
        }
    }
}
