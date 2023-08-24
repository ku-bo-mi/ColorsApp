//
//  FavoritesView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/24.
//

import SwiftUI

struct FavoritesView: View {
    // Properties
    var colors: [MyColor]
    var favs: [MyColor] {
        colors.filter { color in
            color.isFavorite
        }
    }
        
    // Body
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 0) {
                    ForEach(favs) { item in
                        NavigationLink(
                            destination: ColorDetailView(color: item)) {
                                ColorRowView(color: item)
                                    
                            }
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            
                    }
                }
                
            }
            .navigationTitle("お気に入り")
        }
        
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView(colors: getSampleColors())
    }
}
