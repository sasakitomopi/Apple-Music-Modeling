//
//  Landmark.swift
//  DengenCafe
//
//  Created by user on 2021/08/30.
//

import SwiftUI

//Import Location Information
import CoreLocation

//Import ModelData File
import Foundation
    
struct Music:Codable,Hashable,Identifiable{

    var id :Int
    
    var artist:String
    
    var song :String
    
    var link: String
}

