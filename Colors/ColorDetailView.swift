//
//  ColorDetailView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

struct ColorDetailView: View {
    // Properties
    var color: MyColor
    
    // Body
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (alignment: .leading) {
                    Rectangle()
                        .fill(color.color)
                        .frame(height: 500)
                    VStack (alignment: .leading, spacing: 16)  {
                        Text(color.name_jp)
                            .font(.title)
                            .fontWeight(.bold)
                        Text("\(color.name_kana) | \(color.name_eng)")
                            .foregroundColor(.secondary)
                        Text("\(color.color.description)")
                            .foregroundColor(.secondary)
                        
                        
                    }
                    .padding()
                    
                    
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .navigationTitle(color.name_jp)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
        }
        
    }
}

struct ColorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetailView(color: colorsData[2])
    }
}
