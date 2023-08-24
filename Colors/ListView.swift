//
//  ContentView.swift
//  Colors
//
//  Created by 久保田麻美 on 2023/08/23.
//

import SwiftUI

struct ContentView: View {
    // Properties
    @AppStorage("isShowingList") var isShowingList : Bool = true
    var colors: [MyColor]
        
    // Body
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 0) {
                    ForEach(colors) { item in
                        NavigationLink(
                            destination: ColorDetailView(color: item)) {
                                ColorRowView(color: item)
                                    
                            }
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            
                    }
                }
                
            }
            .navigationTitle("Colors")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button (action: {
                        print("button tapped.")
                        isShowingList = false
                    }) {
                        Image(systemName: "square")
                    }
                }
            }
        }
        .onAppear {
                }
    }
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(colors: getSampleColors())
    }
}
