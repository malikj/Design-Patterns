//
//  Concrete.swift
//  Abstract-Factory-Pattern
//
//  Created by malikj on 26/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation

class CompactCarFactory : CarFactory {
    override func createFloorplan() -> Floorplan {
        return StandardFloorplan();
    }
    override func createSuspension() -> Suspension {
        return RoadSuspension();
    }
    override func createDrivetrain() -> Drivetrain {
        return FrontWheelDrive();
    }
}

class SportsCarFactory : CarFactory {
    override func createFloorplan() -> Floorplan {
        return ShortFloorplan();
    }
    override func createSuspension() -> Suspension {
        return RaceSuspension();
    }
    override func createDrivetrain() -> Drivetrain {
        return RearWheelDrive();
    }
}

class SUVCarFactory : CarFactory {
    override func createFloorplan() -> Floorplan {
        return LongFloorplan();
    }
    override func createSuspension() -> Suspension {
        return OffRoadSuspension();
    }
    override func createDrivetrain() -> Drivetrain {
        return AllWheelDrive();
    }
}
