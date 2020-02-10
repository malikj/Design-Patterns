//
//  Decorator_Design_PatternTests.swift
//  Decorator-Design-PatternTests
//
//  Created by malikj on 27/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import XCTest

@testable import Decorator_Design_Pattern

class Decorator_Design_PatternTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
//        let account = CustomerAccount(name:"Joe");
//        account.addPurchase(Purchase(product: "Red Hat", price: 10));
//        account.addPurchase(Purchase(product: "Scarf", price: 20));
//        account.printAccount();
//
    }
    
    func testCofee () {
        
        var someCoffee: Coffee = SimpleCoffee()
        print("Cost : \(someCoffee.getCost()); Ingredients: \(someCoffee.getIngredients())")
        
        someCoffee = Milk(decoratedCoffee: someCoffee)
        print("Cost : \(someCoffee.getCost()); Ingredients: \(someCoffee.getIngredients())")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
