//
//  ContentView.swift
//  Learn By Doing
//
//  Created by Yauheni Bunas on 5/27/20.
//  Copyright © 2020 Yauheni Bunas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var cards: [Card] = cardsData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardsData)
            .previewDevice("iPhone 11 Pro")
    }
}
