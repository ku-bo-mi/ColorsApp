//
//  ColorData.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import Foundation
import SwiftUI

let colorsData: [MyColor] = [
    MyColor(
        name_jp: "桜色",
        name_kana: "さくらいろ",
        name_eng: "Sakura",
        systematicColorName: "ごく薄い紫みの赤" ,
        color: Color(red: 1, green: 0.9, blue: 0.9),
        detail: "桜の花のようなごく薄い紫みの赤のこと。紅染めの最も淡い色です。ほんのり赤みを帯びた顔や肌などを表現するときにも使われる色です。"),
    MyColor(
        name_jp: "露草色",
        name_kana: "つゆくさいろ",
        name_eng: "Tsuyukusa",
        systematicColorName: "鮮やかな青" ,
        color: Color(red: 35/256, green: 157/256, blue: 218/256),
        detail: "露草色は、ツユクサの花またはツユクサの花で染めた青色のことです。ツユクサは古名をツキクサといいます。花の色が着きやすいため「着き草」とよばれたり、万葉集では「月草」と表現されています。"),
    MyColor(
        name_jp: "向日葵色",
        name_kana: "ひまわりいろ",
        name_eng: "Sakura",
        systematicColorName: "鮮やかな黃" ,
        color: Color(red: 252/256, green: 200/256, blue: 0/256),
        detail: "ヒマワリの花のような鮮やかな黄色です。"),
    
]
