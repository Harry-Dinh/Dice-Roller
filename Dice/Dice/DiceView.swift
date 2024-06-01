//
//  DiceView.swift
//  Dice
//
//  Created by Harry Dinh on 2024-06-01.
//

import SwiftUI

struct DiceView: View {
    
    var dice: Dice
    
    private let fontSize: CGFloat = 100
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.quaternary)
                .frame(width: fontSize + 50, height: fontSize + 50)
            Text("\(dice.value)")
                .fontDesign(.monospaced)
                .font(.system(size: fontSize))
        }
    }
}

#Preview {
    DiceView(dice: Dice.placeholder)
        .padding()
}
