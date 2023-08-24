//
//  ColorCardAnimationView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

struct RandomColorFullscreenView: View {
    // Properties
    @AppStorage("isShowingList") var isShowingList : Bool = false
    let colors: [MyColor]
    
    
    // Body
    var body: some View {
        
        NavigationView {
            FullscreenTapView(colors: colors)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button (action: {
                        print("button tapped.")
                        isShowingList = true
//                            print(strings[0])
                        
                    }) {
                        Image(systemName: "list.bullet")
                            .fontWeight(.bold)
//                            .foregroundColor(color.textColor)
                    }
                }
            }
            
        }
        
        
        
        
    }
}

struct ColorCardAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        RandomColorFullscreenView(colors: getSampleColors())
    }
}
