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
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @AppStorage("isShowingList") var isShowingList : Bool = false    
    let colorsData: [MyColor] = readCSV("ColorData.csv")

    
    // Body
    var body: some Scene {
        WindowGroup {
            if isShowingList {
                ContentView(colors: colorsData)
            } else {
                ColorCardAnimationView(colors: colorsData)
            }
            
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
