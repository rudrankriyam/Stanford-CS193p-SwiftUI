//
//  CardView.swift
//  Memorize
//
//  Created by Rudrank Riyam on 31/10/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 2)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 12).fill(Color.orange)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(isFaceUp: true)
    }
}
