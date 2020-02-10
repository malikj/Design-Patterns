//
//  Employees..swift
//  Adapter-Design-Pattern
//
//  Created by malikj on 26/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation


struct Employee {
    
    var name:String;
    
    var title:String;
}

protocol EmployeeDataSource {
    
    var employees:[Employee] { get };
    
    func searchByName(name:String) -> [Employee];
    
    func searchByTitle(title:String) -> [Employee];
}
