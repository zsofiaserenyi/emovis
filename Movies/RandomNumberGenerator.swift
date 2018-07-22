//
//  RandomNumberGenerator.swift
//  Movies
//
//  Created by Serényi  Zsófia on 2018. 07. 09..
//  Copyright © 2018. Serényi  Zsófia. All rights reserved.
//

import Foundation

func random(_ n:Int) -> Int {
    return Int(arc4random_uniform(UInt32(n)))
}


extension Array {
    func randomTenElement() -> [Any] {
        var result = [Any]()
        var x = random(self.count - 10)
        let y = x + 10
        
        while x < y {
            result.append(self[x])
            x += 1
        }
        return result
    }
}



