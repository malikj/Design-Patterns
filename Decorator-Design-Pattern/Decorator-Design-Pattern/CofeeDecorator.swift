//
//  CofeeDecorator.swift
//  Decorator-Design-Pattern
//
//  Created by malikj on 30/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation


class CoffeeDecorator: Coffee {
    private let decoratedCoffee: Coffee
    fileprivate let ingredientSeparator: String = ", "
    
    required init(decoratedCoffee: Coffee) {
        self.decoratedCoffee = decoratedCoffee
    }
    
    func getCost() -> Double {
        return decoratedCoffee.getCost()
    }
    
    func getIngredients() -> String {
        return decoratedCoffee.getIngredients()
    }
}
