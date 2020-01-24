//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Rohit Prajapati on 24/01/20.
//  Copyright © 2020 Rohit Prajapati. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //MARK:- CONTENT VIEW
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment: .center, spacing: 20) {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    CardView()
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
