//
//  AnimeShowDetail.swift
//  AniChan
//
//  Created by Jalp on 25/09/2019.
//  Copyright © 2019 JDC0rp. All rights reserved.
//

import SwiftUI

struct AnimeShowDetail: View {
    
    var anime : Anime
    
    var body: some View {
        List{
            // ZStack used to overlay text on the image
            ZStack(alignment : .bottom) {
                Image(anime.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                // Add blur to the bottom of the image to make the text standout
                Rectangle()
                    .frame(height : 80)
                    .opacity(0.10)
                    .blur(radius: 15)
                    
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(anime.name)
                            .foregroundColor(.primary)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
                // Edge to edge rows
                .listRowInsets(EdgeInsets())
            Text(anime.description)
                .foregroundColor(.primary)
                .font(.body)
                .lineLimit(nil)
                .lineSpacing(10)
                
                
        }
        
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct AnimeShowDetail_Previews: PreviewProvider {
    static var previews: some View {
        AnimeShowDetail(anime : animeData[3])
    }
}
