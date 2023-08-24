//
//  ColorModel.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import Foundation
import SwiftUI

struct MyColor: Identifiable {
    // properties
    var id = UUID()
    var name_jp: String
    var name_kana: String
    var red: Int
    var green: Int
    var blue: Int
    
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
    init(name_jp: String, name_kana: String, red: Int, green: Int, blue: Int) {
        self.name_jp = name_jp
        self.name_kana = name_kana
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
