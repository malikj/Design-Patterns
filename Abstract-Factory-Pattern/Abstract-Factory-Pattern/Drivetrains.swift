//
//  Drivetrains.swift
//  Abstract-Factory-Pattern
//
//  Created by malikj on 26/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation

enum DriveOption : String {
    case FRONT = "Front"; case REAR = "Rear"; case ALL = "4WD";
}

protocol Drivetrain {
    var driveType:DriveOption { get };
}

class FrontWheelDrive : Drivetrain {
    var driveType = DriveOption.FRONT;
}

class RearWheelDrive : Drivetrain {
    var driveType = DriveOption.REAR;
}


class AllWheelDrive : Drivetrain {
    var driveType = DriveOption.ALL;
}

