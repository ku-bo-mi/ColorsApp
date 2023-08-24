//
//  ContentView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

struct AllColorsListView: View {
    // Properties
    var colors: [MyColor]
    @State var showingDetailView: Bool = false
        
    // Body
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 0) {
                    ForEach(colors) { color in
                        ColorRowView(color: color)
                            .onTapGesture {
                                showingDetailView.toggle()
                                print("\(color.name_jp) is tapped.")
                            }
                            .fullScreenCover(isPresented: $showingDetailView) {
                                ColorDetailView(color: color)
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
        AllColorsListView(colors: getSampleColors())
    }
}
