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
    @State var colorIndex: Int = 0
    var color: MyColor {
        colors[colorIndex]
    }
    
    // Initializer
    init(colors: [MyColor]) {
        self.colors = colors.shuffled()
    }
    
    // Body
    var body: some View {
        
        NavigationView {
            ZStack {
                color.color
                    .animation(.easeInOut.speed(0.3), value: colorIndex)
                VStack (spacing: 8) {
                    Text(color.name_jp)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(color.name_kana)
                        .fontWeight(.bold)
                }
                .foregroundColor(color.textColor)
            }
            .ignoresSafeArea()
            .onTapGesture {
                if colorIndex < colors.count - 1 {
                    colorIndex += 1
                } else {
                    colorIndex = 0
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button (action: {
                        print("button tapped.")
                        isShowingList = true
//                            print(strings[0])
                        
                    }) {
                        Image(systemName: "list.bullet")
                            .fontWeight(.bold)
                            .foregroundColor(color.textColor)
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
