//
//  ItemDetail.swift
//  SwiftUILearning
//
//  Created by John Choi on 12/9/19.
//  Copyright © 2019 John Choi. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    
    var item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(10)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -20, y: -5)
            }
            
            Text(item.description)
            .padding()
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: MenuItem.example)
    }
}
