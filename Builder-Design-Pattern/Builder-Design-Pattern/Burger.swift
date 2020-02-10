//
//  Burger.swift
//  Builder-Design-Pattern
//
//  Created by malikj on 26/07/18.
//  Copyright © 2018 malikj. All rights reserved.
//

import Foundation

class BurgerBuilder {
    private var veggie  = false;
    private var pickles = true;
    private var mayo    = true;
    private var ketchup = true;
    private var lettuce = true;
    private var cooked  = Burger.Cooked.NORMAL;
    private var patties = 2;
    func setVeggie(choice: Bool)  { self.veggie  = choice; }
    func setPickles(choice: Bool) { self.pickles = choice; }
    func setMayo(choice: Bool)    { self.mayo    = choice; }
    func setKetchup(choice: Bool) { self.ketchup = choice; }
    func setLettuce(choice: Bool) { self.lettuce = choice; }
    func setCooked(choice: Burger.Cooked) { self.cooked = choice; }
    func addPatty(choice: Bool)   { self.patties = choice ? 3 : 2; }
    
    func buildObject(name: String) -> Burger {
        return Burger(name: name, veggie: veggie, patties: patties,
                      pickles: pickles, mayo: mayo, ketchup: ketchup,
                      lettuce: lettuce, cook: cooked);
    }
    
}

//
class Burger {
    let customerName:String;
    let veggieProduct:Bool;
    let patties:Int;
    let pickles:Bool;
    let mayo:Bool;
    let ketchup:Bool;
    let lettuce:Bool;
    let cook:Cooked;

    enum Cooked : String {
        case RARE = "Rare";
        case NORMAL = "Normal";
        case WELLDONE = "Well Done";
    }

    init(name:String, veggie:Bool, patties:Int, pickles:Bool, mayo:Bool,
         ketchup:Bool, lettuce:Bool, cook:Cooked) {
        self.customerName = name;
        self.veggieProduct = veggie;
        self.patties = patties;
        self.pickles = pickles;
        self.mayo = mayo;
        self.ketchup = ketchup;
        self.lettuce = lettuce;
        self.cook = cook;
    }

    func printDescription() {
        print("Name \(self.customerName)");
        print("Veggie: \(self.veggieProduct)");
        print("Patties: \(self.patties)");
        print("Pickles: \(self.pickles)");
        print("Mayo: \(self.mayo)");
        print("Ketchup: \(self.ketchup)");
        print("Lettuce: \(self.lettuce)");
        print("Cook: \(self.cook.rawValue)");
    }
}
