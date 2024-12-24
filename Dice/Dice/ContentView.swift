//
//  ContentView.swift
//  Dice
//
//  Created by Harry Dinh on 2024-06-01.
//

import SwiftUI

struct ContentView: View {
    
    @State private var viewModel = MainVM(use2Dice: false)
    
    var body: some View {
        VStack {
            HStack {
                Text("Dice Roller")
                    .font(.title3)
                    .bold()
                
                Spacer()
            }
            
            Form {
                HStack(spacing: 20) {
                    Spacer()
                    
                    DiceView(dice: viewModel.dice1)
                    
                    if viewModel.use2dice {
                        DiceView(dice: viewModel.dice2)
                    }
                    
                    Spacer()
                }
                
                Section {
                    HStack {
                        Spacer()
                        Button(action: {
                            viewModel.dice1.value = 0
                            if viewModel.use2dice {
                                viewModel.dice2.value = 0
                            }
                        }) {
                            Text("Reset")
                                .frame(width: 50)
                        }
                        .keyboardShortcut("c", modifiers: [.command, .shift])
                        
                        Button(action: {
                            viewModel.dice1.roll()
                            if viewModel.use2dice {
                                viewModel.dice2.roll()
                            }
                        }) {
                            Text("Roll")
                                .frame(width: 50)
                        }
                        .keyboardShortcut(.return, modifiers: .command)
                    }
                }
                
                Section("Options") {
                    Toggle(isOn: $viewModel.use2dice) {
                        Text("Use 2 Dice")
                    }
                }
            }
            .formStyle(.grouped)
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .frame(width: 300)
}
