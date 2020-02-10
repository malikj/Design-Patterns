//
//  Cofee.swift
//  Decorator-Design-Pattern
//
//  Created by malikj on 30/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation

protocol Coffee {
    func getCost() -> Double
    func getIngredients() -> String
}

class SimpleCoffee: Coffee {
    func getCost() -> Double {
        return 1.0
    }
    
    func getIngredients() -> String {
        return "Coffee"
    }
}
