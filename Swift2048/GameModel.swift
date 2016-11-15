//
//  GameModel.swift
//  Swift2048
//
//  Created by hjqixin on 16/10/12.
//  Copyright © 2016年 Felix. All rights reserved.
//

import Foundation

class GameModel {
    
    var dimension:Int = 0
    
    var tiles:Array<Int>
    
    init(dimension:Int) {
        
        self.dimension = dimension
        
        self.tiles =  Array<Int>.init(repeating: 0, count: self.dimension * self.dimension)
        
    }
    func setPosition(row: Int, col: Int, value:Int) ->Bool {
        
        assert(row >= 0 && row < dimension)
        assert(col >= 0 && col < dimension)
        
        let index = self.dimension * row + col
        let val = tiles[index]
        
        if(val > 0) {
            print("该位置已经有值了")
            return false
        }
        tiles[index] = value
        return true
    }
    
    func emptyPositions() ->Array<Int> {
        
        var emptyTiles = Array<Int>.init()
        
        for i in 0...(dimension * dimension - 1) {
            if (tiles[i] == 0) {
                emptyTiles.append(i)
            }
        }
        return emptyTiles
    }
    
    func isFull() -> Bool {
        
        if (emptyPositions().count == 0) {
            return true
        }
        return false
    }
}
