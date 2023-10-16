//
//  CSVReader.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import Foundation
import SwiftUI


func readCSV(_ filename: String) -> [MyColor] {
    
    let lines : [String] = readLinesFromCSV(filename)
    print("read \(lines.count) lines from \(filename)")
    let results : [MyColor] = parseColorData(from: lines)
    print("read \(results.count) colors from \(filename)")
    return results
//    if let filepath = Bundle.main.path(forResource: filename, ofType: nil) {
//                do {
//                    let fileContent = try String(contentsOfFile: filepath)
//                    let lines = fileContent.components(separatedBy: "\n")
//                    var results: [String] = []
//                    lines.dropFirst().forEach { line in
////                        print(line)
//                        let data = line.components(separatedBy: ",")
//                        if data.count == 7 {
//                            results.append(data[1])
//                            print(data[1])
//                        }
//                    }
//                    return results
//                } catch {
//                    print("error: \(error)") // to do deal with errors
//                }
//            } else {
//                print("\(filename) could not be found")
//            }
//            return []
}

func parseColorData(from lines: [String]) -> [MyColor] {
    var results: [MyColor] = []
    for line in lines {
//        print("parsing: \(line)")
        // trim whitespace and newlines and then split by ','
        let data = line.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: ",")
        if data.count != 8 {
            print("error: \(line)")
            continue
        }
        let name_jp = data[1]
        let name_kana = data[2]
        let name_en = data[3]
        guard let red = Int(data[5]) else {
            print("error in reading red: \(line)")
            continue
        }
        guard let green = Int(data[6]) else {
            print("error in reading green: \(line)")
            continue
        }
        guard let blue = Int(data[7]) else {
            print("error in reading blue: \(line)")
            continue
        }
        
        results.append(MyColor(name_jp: name_jp, name_kana: name_kana, name_en: name_en, red: red, green: green, blue: blue))
    
    }
//    print(results.count)
    return results
}

func readLinesFromCSV(_ filename: String) -> [String] {
    print("reading \(filename)")
    
    if let filepath = Bundle.main.path(forResource: filename, ofType: nil) {
                do {
                    let fileContent = try String(contentsOfFile: filepath)
                    let lines = fileContent.components(separatedBy: "\n")
                    var results: [String] = []
                    lines.forEach { line in
                        results.append(line)
                    }
                    return results
                } catch {
                    print("error: \(error)") // to do deal with errors
                }
            } else {
                print("\(filename) could not be found")
            }
            return []
}

//func loadCSV(_ filename:String)->[String]{
//        //CSVファイルを格納するための配列を作成
//        var csvArray:[String] = []
//        //CSVファイルの読み込み
//        let csvBundle = Bundle.main.path(forResource: filename, ofType: "csv")
//
//        do {
//            //csvBundleのパスを読み込み、shiftJISに文字コード変換して、NSStringに格納
//            let csvData = try String(contentsOfFile: csvBundle!,
//                                     encoding: String.Encoding.shiftJIS)
//            //改行コードが"\r"で行なわれている場合は"\n"に変更する
//            let lineChange = csvData.replacingOccurrences(of: "\r", with: "\n")
//            //"\n"の改行コードで区切って、配列csvArrayに格納する
//            csvArray = lineChange.components(separatedBy: "\n")
//        }
//        catch {
//            print("csv load エラー")
//        }
//        return csvArray
//    }
//
//let csvData = loadCSV("ColorData.csv")
