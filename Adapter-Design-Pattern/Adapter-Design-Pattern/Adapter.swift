//
//  Adapter.swift
//  Adapter-Design-Pattern
//
//  Created by malikj on 27/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation

extension NewCoDirectory:EmployeeDataSource {
    
    var employees: [Employee] {
        return (getStaff().values, { sv -> Employee in
            return Employee(name: sv.getName(), title: sv.getJob());
        });
    
    }
    
    func searchByName(name:String) -> [Employee] {
        return createEmployees(filter: {(sv:NewCoStaffMember) -> Bool in
            return sv.getName().range(of:name) != nil;
            
//            return (e.name.range(of: name) != nil)

        });
    }
    
    func searchByTitle(title:String) -> [Employee] {
        return createEmployees(filter: {(sv:NewCoStaffMember) -> Bool in
            return sv.getJob().range(of:title) != nil;
        });
    }
    
    private func createEmployees(filter filterClosure:(NewCoStaffMember -> Bool))
        -> [Employee] {
            return map(filter(getStaff().values, filterClosure), {entry -> Employee in
                return Employee(name: entry.getName(), title: entry.getJob());
            }); }

    
    
}
