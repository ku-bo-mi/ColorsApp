//
//  ColorRowView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

struct ColorRowView: View {
    //Properties
    var color: MyColor
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 4) {
                Text(color.name_jp)
                    .fontWeight(.bold)
                Text(color.name_kana)
                    .font(.caption)
            }
            .foregroundColor(.white)
            
            Spacer()
            
        }
        .frame(minWidth: 100, maxWidth: .infinity)
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
        .background(color.color)
        
    }
}

struct ColorRowView_Previews: PreviewProvider {
    static var previews: some View {
        ColorRowView(color: colorsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
