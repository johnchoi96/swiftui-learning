//
//  ItemRow.swift
//  SwiftUILearning
//
//  Created by John Choi on 12/9/19.
//  Copyright © 2019 John Choi. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    
    var item: MenuItem
    static let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    var body: some View {
        NavigationLink(destination: ItemDetail(item: item)) {
            HStack {
                Image(item.thumbnailImage)
                VStack(alignment: .leading) {
                    Text(item.name)
                    Text("$\(item.price)")
                }
                Spacer()
                ForEach(item.restrictions, id: \.self) { restriction in
                    Text(restriction)
                        .font(.caption)
                        .fontWeight(.black)
                        .padding(5)
                        .background(Self.colors[restriction, default: .black])
                        .clipShape(Circle())
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
