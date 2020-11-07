//
//  ContentView.swift
//  Memorize
//
//  Created by Rudrank Riyam on 31/10/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<5) { index in
                CardView(isFaceUp: index % 2 == 0)
            }
        }
        .padding()
        .font(.largeTitle)
        .foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
