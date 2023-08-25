//
//  ColorData.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/24.
//

import Foundation
import Combine

class UserSettings: ObservableObject {
    @Published var username: String {
        didSet {
            UserDefaults.standard.set(username, forKey: "username")
        }
    }
    
    init() {
        self.username = UserDefaults.standard.object(forKey: "username") as? String ?? "default name"
    }
}

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
        
        guard let data = UserDefaults.standard.object(forKey: "colors") as? Data else {
            self.colors = readCSV("ColorData.csv")
            return
        }
        
 
        do {
            let decoder = JSONDecoder()
            self.colors = try decoder.decode([MyColor].self, from: data)
        } catch {
            self.colors = readCSV("ColorData.csv")
        }
//        self.colors.sort()
        self.colors.shuffle()
    }
}
