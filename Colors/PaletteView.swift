//
//  ContentView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

struct PaletteView: View {
    // Properties
    @State private var showingDetailView: Bool = false
    @ObservedObject var colorsData = ColorData()
    @State private var selectedColor: MyColor? = getSampleColor()
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    @State private var isShowingGridView: Bool = true
    @State private var isSorted: Bool = true
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
        
    // Body
    var body: some View {
        NavigationView {
            ScrollView {
                if !isShowingGridView {
                    VStack (spacing: 0) {
                        ForEach(colorsData.colors) { color in

                            NavigationLink(
                                destination: ColorDetailView(color: color)) {
                                    ColorListRowView(color: color)
                                }
                        }
                    }
                } else {
                    LazyVGrid(columns: columns) {
                        ForEach(colorsData.colors) { color in
                            NavigationLink(
                                destination: ColorDetailView(color: color)) {
                                    ColorGridItemView(color: color)
                                }
                        }
                    } // Grid
                    .padding(.horizontal)
                }
            }
            .navigationTitle("Color Palette")
            .toolbar {
                // Sort button
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("shuffle button is pressed.")
                        isSorted.toggle()
                        if isSorted {
                            colorsData.colors.sort()
                            colorsData.colors.reverse()
                        } else {
                            colorsData.colors.shuffle()
                        }
                    }) {
                        Image(systemName: isSorted ? "shuffle" :  "arrow.up.and.down.text.horizontal")
                    }
                } // ToolbarItem
                
                // Layout button
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("grid view is activated")
                        isShowingGridView.toggle()
                    }) {
                        Image(systemName: isShowingGridView ? "rectangle.grid.1x2" : "square.grid.2x2")
                    }
                } // ToolbarItem
            } // Toolbar
        } // Navigation
        .onAppear {
            colorsData.colors.sort()
            colorsData.colors.reverse()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PaletteView()
    }
}
