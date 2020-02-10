//
//  FactoryDesignPatternTests.swift
//  FactoryDesignPatternTests
//
//  Created by malikj on 26/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import XCTest

@testable import FactoryDesignPattern

class FactoryDesignPatternTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testSelectCar() {
        let passengers = [1, 3, 5];
        for p in passengers {
            print("\(p) passengers: \(CarSelector.selectCar(passengers: p))");
        }
    }
    
}
