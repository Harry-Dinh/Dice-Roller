//
//  MainVM.swift
//  Dice
//
//  Created by Harry Dinh on 2024-06-01.
//

import Foundation
import SwiftUI

@Observable class MainVM {
    var dice1: Dice
    var dice2: Dice
    var use2dice: Bool
    
    init(use2Dice: Bool) {
        self.use2dice = use2Dice
        dice1 = Dice();
        dice2 = Dice();
    }
}
