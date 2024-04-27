//
//  ContentView.swift
//  km-lab2-zad1-memory
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🐵", "🐸", "🐶", "🐱", "🦊", "🐨", "🐭", "🐹", "🐰", "🐻"]
    @State var cardsCount = 4
    var body: some View {
        VStack {
            HStack {
                ForEach(0 ..< cardsCount, id: \.self) { i in
                    CardView(content: emojis[i])
                }
            }.padding()
            HStack {
                adjustCardNumber(by: -2, symbol: "minus.square")
                Spacer()
                adjustCardNumber(by: 2, symbol: "plus.square")
            }.padding()
        }.padding()
        
    }
    
    func adjustCardNumber(by offset: Int, symbol: String) -> some View {
        Button(
            action: { cardsCount += offset },
            label: { Image(systemName: symbol).font(.largeTitle) }
        ).disabled(cardsCount + offset < 2
                   || cardsCount + offset >= emojis.count)
    }
}

#Preview {
    ContentView()
}
