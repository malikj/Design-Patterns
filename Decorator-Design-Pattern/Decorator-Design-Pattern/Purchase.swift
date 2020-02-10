//
//  Purchase.swift
//  Decorator-Design-Pattern
//
//  Created by malikj on 27/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation



protocol Printable {
    func printData()
}

class Purchase : Printable {
    
    func printData() {
        print("data will print")
    }
    
    private let product:String;
    
    private let price:Float;
    
    init(product:String, price:Float) {
        self.product = product;
        self.price = price;
    }
    
    var description:String {
        return product;
    }
    
    var totalPrice:Float {
        return price;
    }
}
