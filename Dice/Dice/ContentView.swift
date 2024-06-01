//
//  ContentView.swift
//  Dice
//
//  Created by Harry Dinh on 2024-06-01.
//

import SwiftUI

struct ContentView: View {
    
    @State private var viewModel = MainVM(use2Dice: true)
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                DiceView(dice: viewModel.dice1)
                
                if viewModel.use2dice {
                    DiceView(dice: viewModel.dice2)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
