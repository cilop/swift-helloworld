// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func random (min:Int, max:Int) -> Int {
    return min + (Int(arc4random()) % (max - min))
}

let x  = random(20,33)
