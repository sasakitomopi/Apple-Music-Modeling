//
//  ModelData.swift
//  DengenCafe
//
//  Created by user on 2021/09/02.
//

import Foundation
import Combine

final class ModelData : ObservableObject{
    //Load json File
    @Published var musics : [Music] = load("musicPlayer.json")
}

func load<T: Decodable>(_ filename:String) ->T{
    let data:Data
    
    //Check File Exists
    guard let url = Bundle.main.url(forResource:filename,withExtension: nil)else{
        fatalError("ファイルが見つからない")
    }
    
    do{
        data = try Data(contentsOf: url)
    }catch{
        fatalError("データ読み込みエラー")
    }
    
    //Do Decode Json File
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch{
        fatalError("JSON読み込みエラー")
    }
}

