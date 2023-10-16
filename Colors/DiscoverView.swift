//
//  FullscreenTapView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/24.
//

import SwiftUI

struct DiscoverView: View {
    // Properties
    @ObservedObject var colorsData = ColorData()
    @State var colorIndex: Int = 0
    @State private var showingMessage: Bool = false
    var color: MyColor {
        colorsData.colors[colorIndex]
    }
    @State var showingDetailView: Bool = false
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        ZStack {
            color.color
                .animation(.easeInOut.speed(0.3), value: colorIndex)
            VStack {
                HStack (spacing: 20) {
                    Spacer()
                    
                    // Copy button
                    Button(action: {
                        UIPasteboard.general.string = color.hexCode
                        showingMessage = true
                        haptic.impactOccurred()
                    }) {
                        Image(systemName: "square.on.square")
                            .font(.title2)
                            .foregroundColor(color.textColor)
                    }
                    .alert(isPresented: $showingMessage) {
                        Alert(
                            title: Text("Color copied!"),
                            message: Text(color.hexCode)
                        )
                    }
                }
                .padding(.top, 40)
                
                Spacer()
                
                VStack (spacing: 8) {
                    Text(color.name_jp)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(color.name_kana)
                        .fontWeight(.bold)
                    Text(color.name_en.capitalized)
                        .fontWeight(.medium)
                }
                .foregroundColor(color.textColor)
                
                Spacer()
                
                HStack {
                    ColorDetailInfoView(color: color)
                    Spacer()
                }
            }
            .padding(40)
//            VStack {
//                HStack {
//                    Spacer()
//                    Button(action: {
//                        showingDetailView.toggle()
//                    }) {
//                        Image(systemName: "info.circle")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                    }
//                    .foregroundColor(color.textColor)
//                    .fullScreenCover(isPresented: $showingDetailView) {
//                        ColorDetailView(color: color)
//                    }
//                }
//                Spacer()
//            }
//            .padding(.vertical, 80)
//            .padding(.horizontal, 40)
//            
        }
        .edgesIgnoringSafeArea(.top)
        .onTapGesture {
            if colorIndex < colorsData.colors.count - 1 {
                colorIndex += 1
            } else {
                colorIndex = 0
            }
            haptic.impactOccurred()
        }
        .onAppear {
            colorsData.colors.shuffle()
        }
    }
}

struct FullscreenTapView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
