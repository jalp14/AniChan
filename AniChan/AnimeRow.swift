//
//  AnimeRow.swift
//  AniChan
//
//  Created by Jalp on 25/09/2019.
//  Copyright © 2019 JDC0rp. All rights reserved.
//

import SwiftUI

struct AnimeRow: View {
    
    var categoryName : String
    var animes : [Anime]
    
    var body: some View {
        VStack(alignment : .leading) {
            Text(self.categoryName)
                .font(.title)
            
            // Horizontal ScrollView
            ScrollView(.horizontal) {
                HStack(alignment : .top) {
                    // For Each Show
                    ForEach(animes, id : \.self) {
                        anime in
                        
                        // Navigation controller to view more details about the show
                        NavigationLink(destination: AnimeShowDetail(anime:anime)) {
                            AnimeShow(anime : anime)
                                .frame(width : 300)
                                .padding(.trailing, 30)
                        }
                    }
                }
            }
        }
        
    }
}

struct AnimeRow_Previews: PreviewProvider {
    static var previews: some View {
        AnimeRow(categoryName: "TOP", animes: animeData)
    }
}
