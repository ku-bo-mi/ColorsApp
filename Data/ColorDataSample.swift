//
//  ColorData.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import Foundation
import SwiftUI

//let colorsData: [MyColor] = readCSV("ColorData.csv")

func getSampleColor() -> MyColor {
    return getSampleColors().shuffled()[0]
}

func getSampleColors() -> [MyColor] {
    return [
        MyColor(
            name_jp: "露草色",
            name_kana: "つゆくさいろ", 
            name_en: "tsuyukusa-iro",
            red: 35, green: 157, blue: 218),
        MyColor(
            name_jp: "向日葵色",
            name_kana: "ひまわりいろ",
            name_en: "himawari-iro",
            red: 252, green: 200, blue: 0),
        MyColor(
            name_jp: "薔薇色",
            name_kana: "ばらいろ",
            name_en: "bara-iro",
            red: 233, green: 78, blue: 102),
        MyColor(
            name_jp: "桃色",
            name_kana: "ももいろ",
            name_en: "momo-iro",
            red: 240, green: 145, blue: 153),
        MyColor(
            name_jp: "藤紫",
            name_kana: "ふじむらさき",
            name_en: "fujimurasaki",
            red: 165, green: 154, blue: 202),
    ]
}
