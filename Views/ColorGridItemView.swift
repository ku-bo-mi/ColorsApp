//
//  GridItemView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/29.
//

import SwiftUI

struct ColorGridItemView: View {
    // Properties
    let color: MyColor
    var body: some View {
        ZStack {
            color.color
                .cornerRadius(8)
            VStack (alignment: .center, spacing: 4) {
                Text(color.name_jp)
                    .fontWeight(.bold)
                Text(color.name_en.capitalized)
                    .font(.caption)
                    .fontWeight(.medium)
            }
            .foregroundColor(color.textColor)
            .padding(.vertical, 40)
        }
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        ColorGridItemView(color: getSampleColor())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
