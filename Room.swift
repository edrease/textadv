//
//  Room.swift
//  TEXTADV
//
//  Created by Edrease Peshtaz on 8/15/16.
//  Copyright © 2016 mysterio group. All rights reserved.
//

import Foundation

struct Room {
    
    var name: String
    var description: [String]
    var roomExits: [Room]?
    var observeItems: [String]
    var interactItems: [String]
    
    init(name: String, description: [String], roomExits: [Room]?, observeItems: [String], interactItems: [String]) {
        
        self.name = name
        self.description = description
        self.roomExits = roomExits
        self.observeItems = observeItems
        self.interactItems = interactItems
    }
    
}

//    func moveToRoom(room: Room) {
//
//    }

//    var moveCount: Int = 0
//    var moveCountMax: Int = 5