//
//  ContentView.swift
//  PlayMusic
//
//  Created by user on 2021/11/24.
//

import SwiftUI

struct ContentView: View {
    
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        NavigationView{
            List{
                Group{
                    //1
                    Button {
                        soundPlayer.playMusic1()
                    } label: {
                        Text("a")
                    }
                    //2
                    Button {
                        soundPlayer.playMusic2()
                    } label: {
                        Text("b")
                    }
                    //3
                    Button {
                        soundPlayer.playMusic3()
                    } label: {
                        Text("c")
                    }
                    //4
                    Button {
                        soundPlayer.playMusic4()
                    } label: {
                        Text("d")
                    }
                    //5
                    Button {
                        soundPlayer.playMusic5()
                    } label: {
                        Text("e")
                    }
                    //6
                    Button {
                        soundPlayer.playMusic6()
                    } label: {
                        Text("f")
                    }
                    //7
                    Button {
                        soundPlayer.playMusic7()
                    } label: {
                        Text("g")
                    }
                    //8
                    Button {
                        soundPlayer.playMusic8()
                    } label: {
                        Text("h")
                    }
                    //9
                    Button {
                        soundPlayer.playMusic9()
                    } label: {
                        Text("i")
                    }
                    //10
                    Button {
                        soundPlayer.playMusic10()
                    } label: {
                        Text("j")
                    }
//                    //11
//                    Button {
//                        soundPlayer.playMusic11()
//                    } label: {
//                        Text("k")
//                    }
//                    //12
//                    Button {
//                        soundPlayer.playMusic12()
//                    } label: {
//                        Text("l")
//                    }
//                    //13
//                    Button {
//                        soundPlayer.playMusic13()
//                    } label: {
//                        Text("m")
//                    }
//                    //14
//                    Button {
//                        soundPlayer.playMusic14()
//                    } label: {
//                        Text("n")
//                    }
                }
                
            }
            .navigationBarTitle(Text("My Music"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
