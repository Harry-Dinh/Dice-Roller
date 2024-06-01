//
//  Dice.swift
//  Dice
//
//  Created by Harry Dinh on 2024-06-01.
//

import Foundation
import SwiftUI

struct Dice: Observable {
    var value: Int
    
    init() {
        self.value = 0;
    }
    
    public mutating func roll() {
        self.value = Int.random(in: 1...6)
    }
    
    public static let placeholder = Dice()
}
