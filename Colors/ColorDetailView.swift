//
//  ColorDetailView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

struct ColorDetailView: View {
    // Properties
    var color: MyColor
    
    // Body
    var body: some View {
        NavigationView {
            ZStack (alignment: .leading) {
                 
                color.color.ignoresSafeArea()
                    
                VStack (alignment: .leading, spacing: 8)  {
                    Text(color.name_jp)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(color.name_kana)
                        .fontWeight(.bold)
                    
                    Rectangle()
                        .frame(width: 100, height: 1)
                        .padding(.vertical, 20)
                    
                    HStack {
                        Text("RGB")
                            .foregroundColor(color.subTextColor)
                        Text("\(String(color.red)), \(String(color.green)), \(String(color.blue))")
                    }
                    HStack {
                        Text("HEX")
                            .foregroundColor(color.subTextColor)
                        Text(color.hexCode)
                    }
                }
                .foregroundColor(color.textColor)
                .padding(.horizontal, 40)
                
            
                

            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .navigationTitle(color.name_jp)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
        }
        
    }
}

struct ColorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetailView(color: getSampleColor())
    }
}
