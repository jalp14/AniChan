//
//  ContentView.swift
//  AniChan
//
//  Created by Jalp on 25/09/2019.
//  Copyright © 2019 JDC0rp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var categories : [String:[Anime]] {
        .init(
            grouping : animeData,
            by : {$0.category.rawValue}
        )
    }
    
    var body: some View {
        // Navigation View
        NavigationView {
            List (
            categories.keys.sorted(), id : \String.self) { key in
                AnimeRow(categoryName: "\(key) Animes".uppercased(), animes: self.categories[key]!)
                    .frame(height : 320)
                    .padding(.top)
                    .padding(.bottom)
            }
        .navigationBarTitle(Text("AniChan"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
