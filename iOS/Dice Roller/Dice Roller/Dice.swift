//
//  Dice.swift
//  Dice Roller
//
//  Created by Dawei Zhu on 2025/10/2.
//

import Foundation

class Dice{
    private var sides:Int
    
    init(numSides: Int){
        self.sides = numSides
    }
    
    func roll() -> Int {
        return Int.random(in: 1...self.sides)
    }
}
