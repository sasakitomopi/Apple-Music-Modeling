//
//  PageViewModel.swift
//  PlayMusic
//
//  Created by user on 2022/04/10.
//

import Foundation

class PlayerViewModel : ObservableObject {
    let model : Music
    
    @Published var liked = true
    @Published var slider : Double = 30
    @Published var isPlaying = true
    
    init(model: Music){
        self.model = model
    }
}
