//
//  JSONParser.swift
//  AniChan
//
//  Created by Jalp on 25/09/2019.
//  Copyright © 2019 JDC0rp. All rights reserved.
//

import Foundation

let animeData : [Anime] = load("anidesc.json")

func load<T:Decodable>(_ filename:String, as type : T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find the json file")
    }
    
    do {
        data = try Data(contentsOf : file)
    } catch {
        fatalError("Couldn't load json file from the bundle")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse the json file")
    }
}
