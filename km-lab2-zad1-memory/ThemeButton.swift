//
//  ThemeButton.swift
//  km-lab2-zad1-memory
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ThemeButton: View {
    let icon: String
    let label: String
    let colorToChange: Color
    @Binding var themeColor: Color
    var body: some View {
        Button(
            action: { themeColor = colorToChange },
            label: {
                VStack {
                    Image(systemName: icon).font(.title)
                    Text(label)
                }.foregroundColor(themeColor)
            }
        )
    }
}

#Preview {
    ThemeButton(icon: "cloud.sun.fill", label: "Motyw", colorToChange: Color.red, themeColor: .constant(Color.blue))
}
