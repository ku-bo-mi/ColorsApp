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
            DiscoverView()
                .tabItem {
                    Label("Discover", systemImage: "hand.tap")
                }
                .tag(1)
            
            PaletteView()
                .tabItem {
                    Label("Palette", systemImage: "line.3.horizontal")
                }
                .tag(2)
            
            InfoView()
                .tabItem {
                    Label("About", systemImage: "info.circle")
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
