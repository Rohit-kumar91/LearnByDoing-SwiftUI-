//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Rohit Prajapati on 24/01/20.
//  Copyright © 2020 Rohit Prajapati. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //MARK:- PROPERTIES
    let cards: [Card] = cardData
    
    //MARK:- CONTENT VIEW
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }.padding(20)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .previewDevice("iPhone 11 Pro")
    }
}
