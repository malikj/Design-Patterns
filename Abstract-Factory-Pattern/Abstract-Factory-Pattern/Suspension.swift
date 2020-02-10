//
//  Suspension.swift
//  Abstract-Factory-Pattern
//
//  Created by malikj on 26/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation

enum SuspensionOption : String {
    case STANDARD = "Standard"; case SPORTS = "Firm"; case SOFT = "Soft";
}

protocol Suspension {
    var suspensionType:SuspensionOption { get };
}

class RoadSuspension : Suspension {
    var suspensionType = SuspensionOption.STANDARD;
}
class OffRoadSuspension : Suspension {
    var suspensionType = SuspensionOption.SOFT;
}
class RaceSuspension : Suspension {
    var suspensionType = SuspensionOption.SPORTS;
}
