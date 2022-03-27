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
                .environmentObject(ModelData())
                .previewDevice("iPhone 12 Pro")
        }
    }
}

struct MainView: View{
    @State var offsetValue = false
    @State var playValue = false
    
    //refer to Tab and substitute listenNow
    @State private var selection: Tab = .listenNow
    
    enum Tab{
        case listenNow
        case findout
        case radio
        case library
        case search
    }
    
    var body : some View{
        TabView(selection: $selection){
            ListenNow()
                .tabItem{
                    VStack{
                        Image(systemName: "play.circle.fill")
                            .foregroundColor(Color.red)
                        Text("今すぐ聴く")
                    }
                }.tag(Tab.listenNow)
            
            Text("test2")
                .tabItem{
                    VStack{
                        Image(systemName: "archivebox")
                            .foregroundColor(Color.gray)
                        Text("見つける")
                    }
                }.tag(Tab.findout)
            
            Text("test3")
                .tabItem{
                    VStack{
                        Image(systemName: "dot.radiowaves.left.and.right")
                            .foregroundColor(Color.gray)
                        Text("ラジオ")
                    }
                }.tag(Tab.radio)
            
            LibraryList()
                .tabItem{
                    VStack{
                        Image(systemName: "music.note.list")
                            .foregroundColor(Color.gray)
                        Text("ライブラリ")
                    }
                }.tag(Tab.library)
            
            Text("test5")
                .tabItem{
                    VStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.gray)
                        Text("検索")
                    }
                }.tag(Tab.search)
            
        }
        
        //        if(playValue){
        //            ZStack{
        //                PopUpImpl(soundPlayer: "What do you want play music?")
        //            }.offset(x: 0, y: offsetValue ? 0 : 300)
        //                .onAppear{
        //                    withAnimation(Animation.default.repeatCount(1)){
        //                        offsetValue.toggle()
        //                    }
        //                }
        //        }
    }
}
