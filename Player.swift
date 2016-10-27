//
//  Player.swift
//  TEXTADV
//
//  Created by Edrease Peshtaz on 10/13/16.
//  Copyright © 2016 mysterio group. All rights reserved.
//

import Foundation

class Player {
    
    var items: [String]
    var weapon: String
    var gadget: String
    var statusEffectItem: String
    var disguise: String
    var status: String
    
    init(items: [String], weapon: String, gadget: String, statusEffectItem: String, disguise: String, status: String) {
        self.items = items
        self.weapon = weapon
        self.gadget = gadget
        self.statusEffectItem = statusEffectItem
        self.disguise = disguise
        self.status = status
    }
}
