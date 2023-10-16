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
    
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    let colorsData: [MyColor] = readCSV("ColorDataEng.csv")
//    var favorites: [MyColor] = []
    
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
        
        // 起動時に1回だけやる処理をここに記述する
        print("app started.")
        
        return true
    }
}
