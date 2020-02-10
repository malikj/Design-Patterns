//
//  Adapter_Design_PatternTests.swift
//  Adapter-Design-PatternTests
//
//  Created by malikj on 26/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import XCTest
@testable import Adapter_Design_Pattern

class Adapter_Design_PatternTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {

        let search = SearchTool(dataSources: SalesDataSource(), DevelopmentDataSource());
        print("--List--");
        for e in search.employees {
            print("Name: \(e.name)");
        }
        print("--Search--");
        
        for e in search.search(text: "VP", type: SearchTool.SearchType.TITLE) {
            print("Name: \(e.name), Title: \(e.title)");
        }
        
        let newSearch = SearchTool(dataSources: SalesDataSource(),
                                   DevelopmentDataSource(), NewCoDirectory() as! EmployeeDataSource);
        
        for e in newSearch.employees {
            print("Name: \(e.name)");
        }
        print("--Search--");
        for e in search.search(text:"VP", type: SearchTool.SearchType.TITLE) {
            print("Name: \(e.name), Title: \(e.title)");
        }
        
//        --List--
//        Name: Alice
//        Name: Bob
//        Name: Joe
//        Name: Pepe
//        --Search--
//        Name: Alice, Title: VP of Sales
//        Name: Joe, Title: VP of Development

    }

}
