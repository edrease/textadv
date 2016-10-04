//
//  Mission.swift
//  TEXTADV
//
//  Created by Edrease Peshtaz on 8/19/16.
//  Copyright © 2016 mysterio group. All rights reserved.
//

import Foundation

class Mission {
    
    var missionName: String
    var briefing: [String : String]
    var rooms: [Room]
    
    var disguiseOptions: [String]
    var weaponOptions: [String]
    var gadgetOptions: [String]
    var statusItemOptions: [String]
    
    init(missionName: String, briefing: [String : String], rooms: [Room], disguiseOptions: [String], weaponOptions: [String], gadgetOptions: [String], statusItemOptions: [String]) {
        
        self.missionName = missionName
        self.briefing = briefing
        self.rooms = rooms
        self.disguiseOptions = disguiseOptions
        self.weaponOptions = weaponOptions
        self.gadgetOptions = gadgetOptions
        self.statusItemOptions = statusItemOptions
    }
    
}
//instantiate mission
