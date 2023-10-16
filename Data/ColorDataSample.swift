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


//let colorsDataSample: [MyColor] = [
//    MyColor(
//        name_jp: "桜色",
//        name_kana: "さくらいろ",
//        name_eng: "Sakura",
//        systematicColorName: "ごく薄い紫みの赤" ,
//        color: Color(red: 1, green: 0.9, blue: 0.9),
//        detail: "桜の花のようなごく薄い紫みの赤のこと。紅染めの最も淡い色です。ほんのり赤みを帯びた顔や肌などを表現するときにも使われる色です。"),
//    MyColor(
//        name_jp: "露草色",
//        name_kana: "つゆくさいろ",
//        name_eng: "Tsuyukusa",
//        systematicColorName: "鮮やかな青" ,
//        color: Color(red: 35/256, green: 157/256, blue: 218/256),
//        detail: "露草色は、ツユクサの花またはツユクサの花で染めた青色のことです。ツユクサは古名をツキクサといいます。花の色が着きやすいため「着き草」とよばれたり、万葉集では「月草」と表現されています。"),
//    MyColor(
//        name_jp: "向日葵色",
//        name_kana: "ひまわりいろ",
//        name_eng: "Himawari",
//        systematicColorName: "鮮やかな黃" ,
//        color: Color(red: 252/256, green: 200/256, blue: 0/256),
//        detail: "ヒマワリの花のような鮮やかな黄色です。"),
//    MyColor(
//        name_jp: "薔薇色",
//        name_kana: "ばらいろ",
//        name_eng: "Bara",
//        systematicColorName: "鮮やかな赤" ,
//        color: Color(red: 233/256, green: 78/256, blue: 102/256),
//        detail: "薔薇の花のような鮮やかな赤色。"),
//    MyColor(
//        name_jp: "桃色",
//        name_kana: "ももいろ",
//        name_eng: "Momo",
//        systematicColorName: "やわらかい赤" ,
//        color: Color(red: 240/256, green: 145/256, blue: 153/256),
//        detail: "桃の花のようなやわらかい赤色のこと。桃は中国から伝わったものですが、中国では地上の理想郷を桃源郷（とうげんきょう）とよびました。桃色は実際には桃の花から作られた色ではなく、紅花（べにばな）や蘇芳（すおう）をつかって桃の花の色を再現したものです。"),
//    MyColor(
//        name_jp: "藤紫",
//        name_kana: "ふじむらさき",
//        name_eng: "Fujimurasaki",
//        systematicColorName: "明るい紫" ,
//        color: Color(red: 165/256, green: 154/256, blue: 202/256),
//        detail: "少し紫みの藤色です。"),
//
//]
