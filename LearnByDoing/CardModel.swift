
//
//  CardModel.swift
//  LearnByDoing
//
//  Created by Apple on 25/01/20.
//  Copyright © 2020 Rohit Prajapati. All rights reserved.
//

import SwiftUI

//MARK:- CARD MODEL
struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}



