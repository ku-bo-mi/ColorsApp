//
//  SettingRowView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/29.
//

import SwiftUI

struct InfoRowView: View {
    // Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDest: String? = nil
    
    var body: some View {
        VStack {
//            Divider()
//                .padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundColor(.secondary)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if (linkLabel != nil && linkDest != nil) {
                    Link(linkLabel!, destination: URL(string: linkDest!)!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
            .padding(.vertical, 8)
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InfoRowView(name: "Developer", content: "Asami")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            InfoRowView(name: "Link", linkLabel: "Website", linkDest: "test.com")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        }
    }
}
