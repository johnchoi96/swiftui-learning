//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by John Choi on 12/9/19.
//  Copyright © 2019 John Choi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(menu) { section in
                        Section(header: Text(section.name)) {
                            ForEach(section.items) { item in
                                ItemRow(item: item)
                            }
                        }
                    }
                }
                .navigationBarTitle("Menu")
                .listStyle(GroupedListStyle())
            }
            Text("Coded By John Choi")
            .italic()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
