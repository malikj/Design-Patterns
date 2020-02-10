//
//  CarSelector.swift
//  FactoryDesignPattern
//
//  Created by malikj on 26/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation

// issues with the design
// 1.  The CarSelector class has to know about every implementation of the RentalCar protocol that it wants to use, and it has to know when each should be created.

// CarSelector depends on knowledge about the classes that implement the protocol.

//class CarSelector {
//    class func selectCar(passengers:Int) -> String? {
//        var car:RentalCar?;
//        switch (passengers) {
//        case 0...1:
//            car = Sports();
//        case 2...3:
//            car = Compact();
//        case 4...8:
//            car = SUV();
//        case 10...14:
//            car = Minivan()
//        default:
//            car = nil;
//        }
//        return car?.name;
//    }
//}


class CarSelector {
    class func selectCar(passengers:Int) -> String? {
        return createRentalCar(passengers: passengers)?.name
    }
}
