//
//  Abstract.swift
//  Abstract-Factory-Pattern
//
//  Created by malikj on 26/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//


// Benefits
// I can update the corresponding concrete factory classes without having to make corresponding changes in the components that consume them.

//
//abstract factory pattern can be used to create objects that are part of a group or family but that do not conform to a common protocol or share a common base class.

import Foundation

class CarFactory {
    
    func createFloorplan() -> Floorplan {
        fatalError("Not implemented");
    }
    
    func createSuspension() -> Suspension {
        fatalError("Not implemented");
    }
    
    func createDrivetrain() -> Drivetrain {
        fatalError("Not implemented");
    }
    
    final class func getFactory(car:Cars) -> CarFactory? {
        var factory:CarFactory?
        switch (car) {
        case .COMPACT:
            factory = CompactCarFactory();
        case .SPORTS:
            factory = SportsCarFactory();
        case .SUV:
            factory = SUVCarFactory();
        }
        return factory;
    }
}
