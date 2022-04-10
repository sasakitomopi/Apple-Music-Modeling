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
            
            LibraryList()
                .tabItem{
                    VStack{
                        Image(systemName: "music.note.list")
                            .foregroundColor(Color.gray)
                        Text("ライブラリ")
                    }
                }.tag(Tab.library)
            
            SearchBar()
                .tabItem{
                    VStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.gray)
                        Text("検索")
                    }
                }.tag(Tab.search)
            
        }
    }
}
