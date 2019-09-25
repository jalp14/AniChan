//
//  AnimeShow.swift
//  AniChan
//
//  Created by Jalp on 25/09/2019.
//  Copyright © 2019 JDC0rp. All rights reserved.
//

import SwiftUI

struct AnimeShow: View {
    
    var anime : Anime
    
    var body: some View {
        VStack(alignment : .leading, spacing : 16.0) {
            Image(anime.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width : 300, height : 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text(anime.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                
                Text(anime.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height : 40)
            }
        }
    }
}

struct AnimeShow_Previews: PreviewProvider {
    static var previews: some View {
        AnimeShow(anime : animeData[0])
    }
}
