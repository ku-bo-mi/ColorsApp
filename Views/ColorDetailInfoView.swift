//
//  ColorDetailInfoView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/29.
//

import SwiftUI

struct ColorDetailInfoView: View {
    let color: MyColor
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("RGB")
                    .foregroundColor(color.subTextColor)
                Text("\(String(color.red)), \(String(color.green)), \(String(color.blue))")
            }
            HStack {
                Text("HEX")
                    .foregroundColor(color.subTextColor)
                Text(color.hexCode)
            }
        }
        .foregroundColor(color.textColor)
        .fontWeight(.medium)
        
    }
}

struct ColorDetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetailInfoView(color: getSampleColor())
    }
}
