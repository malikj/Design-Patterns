//
//  CarsParts.swift
//  Abstract-Factory-Pattern
//
//  Created by malikj on 26/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation


enum Cars: String {
    case COMPACT = "VW Golf";
    case SPORTS = "Porsche Boxter";
    case SUV = "Cadillac Escalade";
}

struct Car {
    var carType:Cars;
    var floor:Floorplan;
    var suspension:Suspension;
    var drive:Drivetrain;
    func printDetails() {
        print("Car type: \(carType.rawValue)");
        print("Seats: \(floor.seats)");
        print("Engine: \(floor.enginePosition.rawValue)");
        print("Suspension: \(suspension.suspensionType.rawValue)");
        print("Drive: \(drive.driveType.rawValue)");
    } }

