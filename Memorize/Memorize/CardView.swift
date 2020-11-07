//
//  CardView.swift
//  Memorize
//
//  Created by Rudrank Riyam on 31/10/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 2)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 12).fill(Color.orange)
            }
        }
        .aspectRatio(2/3, contentMode: .fit)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(content: "😅", id: 1))
    }
}
