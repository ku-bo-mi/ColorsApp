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
    @Environment(\.dismiss) var dismiss
    @State private var showingMessage: Bool = false
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    
    // Body
    var body: some View {
        
        ZStack (alignment: .leading) {
            // background color
            color.color.edgesIgnoringSafeArea(.top)
                
            VStack (alignment: .leading, spacing: 8)  {
                HStack (spacing: 20) {
                    Spacer()
                    
                    // Copy button
                    Button(action: {
                        UIPasteboard.general.string = color.hexCode
                        showingMessage = true
                        haptic.impactOccurred()
                    }) {
                        Image(systemName: "square.on.square")
                    }
                    .alert(isPresented: $showingMessage) {
                        Alert(
                            title: Text("Color copied!"),
                            message: Text(color.hexCode)
                        )
                    }
                    
//                    // Favorite button
//                    Button(action: {
////                            color.isFavorite.toggle()
//                    }) {
//                        color.isFavorite ? Image(systemName: "heart.fill") : Image(systemName: "heart")
//                    }
                    
                    // Close button
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                }
                .foregroundColor(color.textColor)
                .font(.title2)
                
                Spacer()
                
                VStack (alignment: .center) {
                    Text(color.name_jp)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(color.name_kana)
                        .fontWeight(.bold)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Spacer()
                
                ColorDetailInfoView(color: color)
            }
            .foregroundColor(color.textColor)
            .padding(.horizontal, 40)
            .padding(.vertical, 40)

        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .navigationTitle(color.name_jp)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(false)
        .onAppear {
            print("color detail view with \(color.name_jp)")
            
        }
    }
}

struct ColorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetailView(color: getSampleColor())
    }
}
