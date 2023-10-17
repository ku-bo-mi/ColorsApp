//
//  ColorData.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/24.
//

import Foundation
import Combine

class ColorData: ObservableObject {
    @Published var colors: [MyColor] {
        didSet {
            do {
                let encoder = JSONEncoder()
                let data = try encoder.encode(colors)
                UserDefaults.standard.set(data, forKey: "colors")
            } catch {
                print("error")
            }
        }
    }
    
    init() {
        self.colors = readCSV("ColorDataEng.csv")
    }
}
