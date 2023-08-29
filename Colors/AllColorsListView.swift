//
//  ContentView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

struct AllColorsListView: View {
    // Properties
    @State private var showingDetailView: Bool = false
    @ObservedObject var colorsData = ColorData()
    @State private var selectedColor: MyColor? = getSampleColor()
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    @State private var isShowingGridView: Bool = true
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
                                    ColorRowView(color: color)
                                }
//                            ColorRowView(color: color)
//                                .onTapGesture {
//                                    selectedColor = color
//                                    showingDetailView.toggle()
//                                    print("\(color.name_jp) is tapped.")
//                                    haptic.impactOccurred()
//                                }
//                                .fullScreenCover(isPresented: $showingDetailView) {
//                                    ColorDetailView(color: selectedColor!)
//                                }
                                
                        }
                    }
                } else {
                    LazyVGrid(columns: columns) {
                        ForEach(colorsData.colors) { color in
                            NavigationLink(
                                destination: ColorDetailView(color: color)) {
                                    GridItemView(color: color)
                                }
                        }
                    } // Grid
                    .padding(.horizontal)
                }
            }
            .navigationTitle("色図鑑")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("grid view is activated")
                        isShowingGridView.toggle()
                    }) {
                        Image(systemName: isShowingGridView ? "square.grid.2x2" : "rectangle.grid.1x2")
                    }
                }
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
        AllColorsListView()
    }
}
