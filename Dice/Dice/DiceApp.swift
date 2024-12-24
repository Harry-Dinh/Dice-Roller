//
//  DiceApp.swift
//  Dice
//
//  Created by Harry Dinh on 2024-06-01.
//

import SwiftUI

@main
struct DiceApp: App {
    var body: some Scene {
        MenuBarExtra("Dice Roller", systemImage: "dice") {
            ContentView()
        }
        .menuBarExtraStyle(.window)
    }
}
