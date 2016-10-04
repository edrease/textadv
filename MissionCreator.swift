//
//  MissionCreator.swift
//  TEXTADV
//
//  Created by Edrease Peshtaz on 8/19/16.
//  Copyright © 2016 mysterio group. All rights reserved.
//

import Foundation

class MissionCreator {
    
    class func createDemoMission() -> Mission {
        var missionRooms: [Room] = []
        
        var hallway: Room = Room(name: "Office Hallway",
                                 description: ["You stand at the end of the north hallway, floor 4 of your main office.", "Nothing really exciting happense here, except for when cakes and coffees are provided.", "HQ: You have been summoned by your boss, Colonel Bossman.", "PRINCE: Get there quickly, mate.", "TECH: The quicker you do, the faster I can tell you about gadgets.", "SPECTRE: I love being in your thoughts hehe"],
                                 roomExits: nil,
                                 observeItems: [Constants.kCarpetStain, Constants.kPictureOfMen],
                                 interactItems: ["Light fixture"])
        
        var janitorCloset: Room = Room(name: "Janitor Closet",
                                       description: ["Cleaning supplies everywhere", "You think you hear someone, or something, breathing"],
                                       roomExits: nil,
                                       observeItems: ["Wet mop", "Floor map", "Furnace"],
                                       interactItems: ["Broom", "Janitor Diary"])
        
        var bossOffice: Room = Room(name: "Boss' Office",
                                    description: ["When you enter you see Boss reading a file", "He looks busy"],
                                    roomExits: nil,
                                    observeItems: ["Boss' desk", "Boss", "Garbage can"],
                                    interactItems: ["Stapler", "Picture frame"])
        
        hallway.roomExits = [janitorCloset, bossOffice]
        janitorCloset.roomExits = [hallway]
        bossOffice.roomExits = [hallway]
        
        missionRooms.append(hallway)
        missionRooms.append(janitorCloset)
        missionRooms.append(bossOffice)
        
        let demoMission: Mission = Mission(missionName: "Demo Mission",
                                           briefing: ["Environment" : "Office Building"],
                                           rooms: missionRooms,
                                           disguiseOptions: ["Blond wig", "Boss replica mask", "Fake beard"],
                                           weaponOptions: ["Gun", "Pen", "Dagger"],
                                           gadgetOptions: ["Mirror sunglass", "Voice thrower"],
                                           statusItemOptions: ["Fake death pill"])
        
        return demoMission
    }
    
}
