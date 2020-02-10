//
//  CustomerAccount.swift
//  Decorator-Design-Pattern
//
//  Created by malikj on 27/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation

class CustomerAccount {
    
    let customerName:String;
    
    var purchases = [Purchase]();
    
    init(name:String) {
        self.customerName = name;
    }
    
    func addPurchase(purchase:Purchase) {
        self.purchases.append(purchase);
    }
    
    func printAccount() {
        var total:Float = 0;
        for p in purchases {
            total += p.totalPrice;
            print("Purchase \(p), Price \(formatCurrencyString(number: p.totalPrice))");
        }
        print("Total due: \(formatCurrencyString(number: total))");
    }
    
    func formatCurrencyString(number:Float)  {
//        let formatter = NumberFormatter();
//        formatter.numberStyle = formatterCurrencyStyle;
//        return formatter.stringFromNumber(NSNumber(number)) ?? "";
    }
}
