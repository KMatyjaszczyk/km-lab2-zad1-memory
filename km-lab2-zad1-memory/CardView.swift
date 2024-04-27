//
//  CardView.swift
//  km-lab2-zad1-memory
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = true
    @Binding var themeColor: Color
    var body: some View {
        let rectangle = RoundedRectangle(cornerRadius: 12)
        ZStack {
            Group {
                rectangle.fill(.white)
                rectangle
                    .strokeBorder(style: StrokeStyle(lineWidth: 2))
                    .foregroundColor(themeColor)
                Text(content).font(.largeTitle)
                
            }.opacity(isFaceUp ? 1 : 0)
            rectangle
                .fill(themeColor)
                .opacity(isFaceUp ? 0 : 1)
            
        }
        .onTapGesture() { isFaceUp = !isFaceUp }
        .aspectRatio(2.0/3.0, contentMode: .fill)
    }
}

#Preview {
    CardView(content: "😂", themeColor: .constant(Color.red))
}
