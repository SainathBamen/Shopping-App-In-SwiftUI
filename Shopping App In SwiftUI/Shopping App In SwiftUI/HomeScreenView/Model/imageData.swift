//
//  imageData.swift
//  Shopping App In SwiftUI
//
//  Created by mac on 8/28/24.
//

import Foundation

struct FruitModel{
    var id : Int
    var title : fruitTitle
    var image : String
    var price : String
    var color : String
    
}

enum fruitTitle : String{
    case apple, apricot, avocado, banana, blackberry, cherry, dragonfruit, fig, grapes, kiwi, lemon, mango, muskmelon, orange, papaya, pear, pineapple, plum, rasperry, strawberry, watermelon
}
