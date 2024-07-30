//
//  Game.swift
//  Fishing
//
//  Created by 蔡婷羽 on 2021/8/23.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
       100 - abs(target - sliderValue)
    }
}
