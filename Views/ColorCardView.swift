//
//  ColorCardView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

struct ColorCardView: View {
    //Properties
    var color: MyColor
    
    var body: some View {
        ZStack {
            VStack (spacing: 8) {
                Text(color.name_jp)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(color.name_en.uppercased())
                    .fontWeight(.medium)
            }
            .foregroundColor(color.textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(color.color)
        .cornerRadius(20)
    }
}

struct ColorCardView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCardView(color: getSampleColor())
    }
}
