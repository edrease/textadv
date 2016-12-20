//
//  MissionCreator.swift
//  TEXTADV
//
//  Created by Edrease Peshtaz on 8/19/16.
//  Copyright © 2016 mysterio group. All rights reserved.
//

import Foundation

class MissionCreator {
    
//    class func createDemoMission() -> Mission {
//        var missionRooms: [Room] = []
//        
//        var hallway: Room = Room(name: "Office Hallway",
//                                 description: ["Standing at the platform now...", "Nothing really exciting happense here, except for when cakes and coffees are provided.", "HQ: You have been summoned by your boss, Colonel Bossman.", "PRINCE: Get there quickly, mate.", "TECH: The quicker you do, the faster I can tell you about gadgets.", "SPECTRE: I love being in your thoughts hehe"],
//                                 roomExits: nil,
//                                 observeItems: [Constants.kCarpetStain, Constants.kPictureOfMen],
//                                 interactItems: ["Light fixture"],
//                                 talkOptions: [],
//                                 attackOptions: [])
//        
//        var janitorCloset: Room = Room(name: "Janitor Closet",
//                                       description: ["Cleaning supplies everywhere", "You think you hear someone, or something, breathing"],
//                                       roomExits: nil,
//                                       observeItems: ["Wet mop", "Floor map", "Furnace"],
//                                       interactItems: ["Broom", "Janitor Diary"],
//                                       talkOptions: [],
//                                       attackOptions: [])
//        
//        var bossOffice: Room = Room(name: "Boss' Office",
//                                    description: ["When you enter you see Boss reading a file", "He looks busy"],
//                                    roomExits: nil,
//                                    observeItems: ["Boss' desk", "Boss", "Garbage can"],
//                                    interactItems: ["Stapler", "Picture frame"],
//                                    talkOptions: [],
//                                    attackOptions: [])
//        
//        hallway.roomExits = [janitorCloset, bossOffice]
//        janitorCloset.roomExits = [hallway]
//        bossOffice.roomExits = [hallway]
//        
//        missionRooms.append(hallway)
//        missionRooms.append(janitorCloset)
//        missionRooms.append(bossOffice)
//        
//        let demoMission: Mission = Mission(missionName: "Demo Mission",
//                                           briefing: ["Environment" : "Office Building"],
//                                           rooms: missionRooms,
//                                           disguiseOptions: ["old man makeup", "blonde bombshell", "porter"],
//                                           weaponOptions: ["dagger", "pen w/ sleep dart", "heavy glove"],
//                                           gadgetOptions: ["thermal sunglass", "wristwatch lockpick", "magnet boot"],
//                                           statusItemOptions: ["sedative", "amphetamine", "psychedelic pill"])
//        
//        return demoMission
//    }
    
    class func createMissionOne() -> Mission {
        
        var platform: Room = Room(name: "Platform", description: ["On the boarding platform now.", "No sign of the mark yet."],
                                  roomExits: [Constants.kMoveBoardTrain],
                                  observeItems: [Constants.kObserveTrainCars, Constants.kObserveOldLadyLuggage, Constants.kObserveTrashCan],
                                  interactItems: [Constants.kInteractTrashCan],
                                  talkOptions: [Constants.kTalkDog, Constants.kTalkPorter, Constants.kTalkYoungMan, Constants.kTalkTicketSeller],
                                  attackOptions: [Constants.kAttackPorter])
        
       
        
        var missionOne: Mission = Mission(missionName: "Train Mission",
                                          briefing: [:],
                                          initialRoom: platform,
                                          disguiseOptions: ["old man makeup", "blonde bombshell", "porter"],
                                          weaponOptions: ["dagger", "pen w/ sleep dart", "heavy glove"],
                                          gadgetOptions: ["thermal sunglass", "wristwatch lockpick", "magnet boot"],
                                          statusItemOptions: ["sedative", "amphetamine", "psychedelic pill"])
        
        return missionOne
    }

    
}
