//
//  Anime.swift
//  AniChan
//
//  Created by Jalp on 25/09/2019.
//  Copyright © 2019 JDC0rp. All rights reserved.
//

import SwiftUI

struct Anime : Hashable, Codable, Identifiable {
    
    // All the JSON elements
    var id : Int
    var name : String
    var imageName : String
    var category : Category
    var description : String
    
    // Types of category 
    enum Category : String, CaseIterable, Codable, Hashable {
        case top = "top"
        case all = "all"
    }
}
