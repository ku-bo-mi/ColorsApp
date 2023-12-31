//
//  ColorModel.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import Foundation
import SwiftUI

struct MyColor: Identifiable, Codable {
    

    // properties
    var id = UUID()
    var name_jp: String
    var name_kana: String
    var name_en: String
    var red: Int
    var green: Int
    var blue: Int
    var isFavorite: Bool = false
    
    var hexCode: String {
        "#" + String(format: "%02X", red) + String(format: "%02X", green) + String(format: "%02X", blue)
    }
    
    var color: Color {
        Color(red: Double(red)/256, green: Double(green)/256, blue: Double(blue)/256)
    }
    
    var textColor: Color {
        isDark() ? .white : .black
    }
    
    var subTextColor: Color {
        textColor.opacity(0.6)
    }
    
    // initializer
    init(name_jp: String, name_kana: String, name_en: String, red: Int, green: Int, blue: Int) {
        self.name_jp = name_jp
        self.name_kana = name_kana
        self.name_en = name_en
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    // functions
    private func isDark() -> Bool {
        
        let brightness = Double(red + green + blue) / 3 / 256
        if brightness < 0.7 {
            return true
        } else {
            return false
        }
    }
}


extension MyColor: Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.hexCode == rhs.hexCode
    }
}

extension MyColor: Comparable {
    static func < (lhs: MyColor, rhs: MyColor) -> Bool {
        let uiColor1 = UIColor(lhs.color)
        let uiColor2 = UIColor(rhs.color)
        var hue1: CGFloat = 0
        var hue2: CGFloat = 0
        var saturation1: CGFloat = 0
        var saturation2: CGFloat = 0
        var brightness: CGFloat = 0
        var alpha: CGFloat = 0
        uiColor1.getHue(&hue1, saturation: &saturation1, brightness: &brightness, alpha: &alpha)
        uiColor2.getHue(&hue2, saturation: &saturation2, brightness: &brightness, alpha: &alpha)
        let value1 = saturation1 > 0.1 ? hue1 : 0.0
        let value2 = saturation2 > 0.1 ? hue2 : 0.0
        return value1 < value2
    }
}
