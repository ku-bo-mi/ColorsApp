//
//  ColorsApp.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

@main
struct ColorsApp: App {
    // Properties
    
    let colorsData: [MyColor] = readCSV("ColorDataEng.csv")
    
    // Body
    var body: some Scene {
        WindowGroup {
            TabMenuView()
                .preferredColorScheme(.light)
        }
        
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("app started.")
        return true
    }
}
