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

    // MARK:- Drawing Constants

    let cornerRadius: CGFloat = 12
    let edgeLineWidth: CGFloat = 2

    var body: some View {
        GeometryReader { geometry in
            body(for: geometry.size)
        }
    }

    func body(for size: CGSize) -> some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.orange)
            }
        }
        .font(.system(size: fontSize(for: size)))
        .aspectRatio(2/3, contentMode: .fit)
    }

    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.8
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(content: "😅", id: 1))
    }
}
