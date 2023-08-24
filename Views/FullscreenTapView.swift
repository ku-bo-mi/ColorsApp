//
//  FullscreenTapView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/24.
//

import SwiftUI

struct FullscreenTapView: View {
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
    
    var body: some View {
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
        .edgesIgnoringSafeArea(.top)
        .onTapGesture {
            if colorIndex < colors.count - 1 {
                colorIndex += 1
            } else {
                colorIndex = 0
            }
        }
    }
}

struct FullscreenTapView_Previews: PreviewProvider {
    static var previews: some View {
        FullscreenTapView(colors: getSampleColors())
    }
}
