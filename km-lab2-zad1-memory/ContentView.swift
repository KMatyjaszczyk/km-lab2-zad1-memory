//
//  ContentView.swift
//  km-lab2-zad1-memory
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🐵", "🐸", "🐶", "🐱", "🦊", "🐨", "🐭", "🐹", "🐰", "🐻"]
    @State var cardsCount = 10
    @State var themeColor = Color.blue
    var body: some View {
        VStack {
            title
            Spacer()
            cardDisplay
            // cardNumberAdjuster
            themeButtons
        }.padding()
        
    }
    
    var title: some View {
        Text("Memo").font(.largeTitle)
    }
    
    var cardDisplay: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                ForEach(0 ..< cardsCount, id: \.self) { i in
                    CardView(content: emojis[i], themeColor: self.$themeColor)
                }
            }.foregroundColor(.blue)
        }
        
    }
    
    var cardNumberAdjuster: some View {
        HStack {
            adjustCardNumber(by: -2, symbol: "minus.square")
            Spacer()
            adjustCardNumber(by: 2, symbol: "plus.square")
        }.padding()
    }
    
    func adjustCardNumber(by offset: Int, symbol: String) -> some View {
        Button(
            action: { cardsCount += offset },
            label: { Image(systemName: symbol).font(.largeTitle) }
        ).disabled(cardsCount + offset < 2
                   || cardsCount + offset >= emojis.count)
    }
    
    var themeButtons: some View {
        HStack {
            ThemeButton(icon: "cloud.sun.fill", label: "Motyw 1", colorToChange: Color.blue, themeColor: self.$themeColor)
            Spacer()
            ThemeButton(icon: "graduationcap.fill", label: "Motyw 2", colorToChange: Color.red, themeColor: self.$themeColor)
            Spacer()
            ThemeButton(icon: "soccerball", label: "Motyw 3", colorToChange: Color.green, themeColor: self.$themeColor)
        }
    }
}

#Preview {
    ContentView()
}
