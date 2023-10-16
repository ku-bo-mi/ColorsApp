//
//  TabView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/24.
//

import SwiftUI

struct TabMenuView: View {
    // Properties
    @State var selection = 1
//    let colors: [MyColor]
    
    var body: some View {
        TabView(selection: $selection) {
            FullscreenTapView()
                .tabItem {
                    Label("Explore", systemImage: "hand.tap")
                }
                .tag(1)
            
            AllColorsListView()
                .tabItem {
                    Label("Palette", systemImage: "line.3.horizontal")
                }
                .tag(2)
            
//            FavoritesView(colors: colors)
//                .tabItem {
//                    Label("お気に入り", systemImage: "heart")
//                }
//                .tag(3)
            
            SettingsView()
                .tabItem {
                    Label("About", systemImage: "ellipsis")
                }
                .tag(4)
        } // TabView
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabMenuView()
    }
}
