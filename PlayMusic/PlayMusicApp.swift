//
//  PlayMusicApp.swift
//  PlayMusic
//
//  Created by user on 2021/11/24.
//

import SwiftUI

@main
struct PlayMusicApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
