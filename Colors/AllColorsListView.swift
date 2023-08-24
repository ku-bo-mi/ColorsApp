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
//                        NavigationLink(
//                            destination: ColorDetailView(color: item)) {
//                                ColorRowView(color: item)
//
//                            }
//                            .listRowSeparator(.hidden)
//                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        ColorRowView(color: color)
                            .onTapGesture {
                                showingDetailView.toggle()
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
