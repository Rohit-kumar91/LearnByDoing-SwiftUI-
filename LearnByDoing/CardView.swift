//
//  CardView.swift
//  LearnByDoing
//
//  Created by Rohit Prajapati on 24/01/20.
//  Copyright © 2020 Rohit Prajapati. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    //MARK:-
    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    
    //MARK:- CARD
    var body: some View {
        ZStack {
            Image("developer-no1")
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Better App, Less Code")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
                }
            .offset(y: -218)
            
            Button(action: {
                print("Button Tapped")
            }) {
                HStack {
                    Text("Learn".uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .accentColor(Color.white)
                        .font(Font.title.weight(.medium))
                }
                .padding(.vertical)
                .padding(.horizontal)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
            .shadow(color: Color("Shadow"), radius: 8, x: 0, y: 3)
                
            }
            .offset(y: 210)
            
            
        }.frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
