//
//  Abstract_Factory_PatternTests.swift
//  Abstract-Factory-PatternTests
//
//  Created by malikj on 26/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import XCTest

@testable import Abstract_Factory_Pattern

class Abstract_Factory_PatternTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreateCar() {
        
        var car = Car(carType: Cars.SPORTS,
                      floor: ShortFloorplan(),
                      suspension: RaceSuspension(),
                      drive: RearWheelDrive());
        
      
        // Benefits 
//         I can update the corresponding concrete factory classes without having to make corresponding changes in the components that consume them.
        
        
        let factory = CarFactory.getFactory(car: Cars.SPORTS);
        
        if (factory != nil) {
            let car = Car(carType: Cars.SPORTS,
                          floor: factory!.createFloorplan(),
                          suspension: factory!.createSuspension(),
                          drive: factory!.createDrivetrain());
            car.printDetails();
        }

        
    }
     
    
}
