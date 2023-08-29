//
//  ContentView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

struct AllColorsListView: View {
    // Properties
    @State var showingDetailView: Bool = false
    @ObservedObject var colorsData = ColorData()
    @State var selectedColor: MyColor? = getSampleColor()
    let haptic = UIImpactFeedbackGenerator(style: .medium)
        
    // Body
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 0) {
                    ForEach(colorsData.colors) { color in

//                        NavigationLink(
//                            destination: ColorDetailView(color: color)) {
//                                ColorRowView(color: color)
//                            }
                        ColorRowView(color: color)
                            .onTapGesture {
                                selectedColor = color
                                showingDetailView.toggle()
                                print("\(color.name_jp) is tapped.")
                                haptic.impactOccurred()
                            }
                            .fullScreenCover(isPresented: $showingDetailView) {
                                ColorDetailView(color: selectedColor!)
                            }
                            
                    }
                }
            }
            .navigationTitle("色図鑑")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AllColorsListView()
    }
}
