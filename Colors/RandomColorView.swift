//
//  RandomColorView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

struct RandomColorView: View {
    //Properties
    @AppStorage("isShowingList") var isShowingList : Bool = false
    var colors: [MyColor]
    
    var body: some View {
        NavigationView {
            TabView {
                ForEach(colors.shuffled()) { color in
//                    ColorCardView(color: color)
//                        .padding(.horizontal, 20)
                    ColorCardAnimationView(colors: colors)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button (action: {
                            print("button tapped.")
                            isShowingList = true
//                            print(strings[0])
                            
                        }) {
                            Image(systemName: "list.bullet")
                        }
                    }
                }
        }
        
    }
}

struct RandomColorView_Previews: PreviewProvider {
    static var previews: some View {
        RandomColorView(colors: getSampleColors())
    }
}
