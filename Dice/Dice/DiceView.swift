//
//  DiceView.swift
//  Dice
//
//  Created by Harry Dinh on 2024-06-01.
//

import SwiftUI

struct DiceView: View {
    
    var dice: Dice
    
    var body: some View {
        GroupBox {
            Text("\(dice.value)")
                .fontDesign(.rounded)
                .font(.largeTitle)
                .frame(width: 60, height: 60)
        }
    }
}

#Preview {
    DiceView(dice: Dice.placeholder)
        .padding()
}
