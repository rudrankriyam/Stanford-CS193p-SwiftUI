//
//  ContentView.swift
//  Memorize
//
//  Created by Rudrank Riyam on 19/05/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: index % 2 == 0)
            }
        }
        .font(.largeTitle)
        .foregroundColor(.orange)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
            RoundedRectangle(cornerRadius: 16)
                .stroke(lineWidth: 3)
            Text("👻")
            } else {
            RoundedRectangle(cornerRadius: 16)
                          .fill()
            }
        }
    }
}
