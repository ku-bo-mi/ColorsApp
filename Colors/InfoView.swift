//
//  SettingsView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/24.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    Text("ZenPalette is an app that offers a delightful exploration of traditional Japanese colors. Explore a world of colors with our minimalistic interface and let your creativity flow.\nStay inspired. Stay colorful.")
                } header: {
                    Text("About this app")
                }
                Section {
                    InfoRowView(name: "Developer", linkLabel: "@kubomi____", linkDest: "https://twitter.com/kubomi____")
                    InfoRowView(name: "Resource", linkLabel: "JIS", linkDest: "https://kikakurui.com/z8/Z8102-2001-01.html")
                } header: {
                    Text("Credit")
                }
            } // List
            .navigationTitle("About")
        } // Navigation
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
