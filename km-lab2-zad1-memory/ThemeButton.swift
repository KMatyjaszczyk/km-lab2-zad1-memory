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
    var body: some View {
        Button(
            action: {},
            label: {
                VStack {
                    Image(systemName: icon)
                    Text(label)
                }
            }
        )
    }
}

#Preview {
    ThemeButton(icon: "cloud.sun.fill", label: "Motyw")
}
