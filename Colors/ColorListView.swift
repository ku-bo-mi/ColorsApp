//
//  ColorListView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/24.
//

import SwiftUI

struct ColorListView: View {
    var colors: [MyColor]
    
    var body: some View {
        ScrollView {
            VStack (spacing: 0) {
                ForEach(colors) { item in
                    NavigationLink(
                        destination: ColorDetailView(color: item)) {
                            ColorRowView(color: item)
                                
                        }
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                }
            }
            
        }
    }
}

struct ColorListView_Previews: PreviewProvider {
    static var previews: some View {
        ColorListView(colors: getSampleColors())
    }
}
