//
//  ColorModel.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import Foundation
import SwiftUI

struct MyColor: Identifiable {
    var id = UUID()
    var name_jp: String
    var name_kana: String
    var name_eng: String
    var systematicColorName: String
    var color: Color
    var detail: String
}
