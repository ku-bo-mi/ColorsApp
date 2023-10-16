//
//  SettingsView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    SettingRowView(name: "Developer", linkLabel: "@kubomi____", linkDest: "https://twitter.com/kubomi____")
                    SettingRowView(name: "Reference", linkLabel: "JIS 物体色の色名", linkDest: "https://kikakurui.com/z8/Z8102-2001-01.html")
                } header: {
                    Text("About this app")
                }
            } // List
            .navigationTitle("About this App")
        } // Navigation
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
