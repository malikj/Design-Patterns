//
//  Milk.swift
//  Decorator-Design-Pattern
//
//  Created by malikj on 30/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation

 class Milk: CoffeeDecorator {
    
    let ingredientSeparator: String = ", "

    required init(decoratedCoffee: Coffee) {
        super.init(decoratedCoffee: decoratedCoffee)
    }
    
    override func getCost() -> Double {
        return super.getCost() + 0.5
    }
    
    override func getIngredients() -> String {
        return super.getIngredients() + ingredientSeparator + "Milk"
    }
}
