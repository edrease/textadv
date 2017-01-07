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
                                  roomExits: [MissionOneConstants.kMoveBoardTrain],
                                  observeItems: [MissionOneConstants.kObserveTrainCars, MissionOneConstants.kObserveOldLadyLuggage, MissionOneConstants.kObserveTrashCan],
                                  interactItems: [MissionOneConstants.kInteractTrashCan],
                                  talkOptions: [MissionOneConstants.kTalkDog, MissionOneConstants.kTalkPorter, MissionOneConstants.kTalkYoungMan, MissionOneConstants.kTalkTicketSeller],
                                  attackOptions: [MissionOneConstants.kAttackPorter])
        
        var controlCabin: Room = Room(name: "Control Cabin",
                                      description: ["The conducter is standing in front of his equipment panel, looking stoically forward."],
                                      roomExits: [MissionOneConstants.kMoveEngineCar],
                                      observeItems: [""],
                                      interactItems: [""],
                                      talkOptions: [""],
                                      attackOptions: [""])
        
        
        var engineCar: Room = Room(name: "Engine Car",
                                   description: ["There is a large, loud engine that takes up nearly the whole car."],
                                   roomExits: [MissionOneConstants.kMoveControlCabin, MissionOneConstants.kMoveBaggageCar],
                                   observeItems: [""],
                                   interactItems: [""],
                                   talkOptions: [""],
                                   attackOptions: [""])
        
        var baggageCar: Room = Room(name: "Baggage Car",
                                    description: ["All of the passangers luggages have been stored in this car."],
                                    roomExits: [MissionOneConstants.kMoveEngineCar, MissionOneConstants.kMoveCoachCar1],
                                    observeItems: [""],
                                    interactItems: [""],
                                    talkOptions: [""],
                                    attackOptions: [""])
        
        var coachCar1: Room = Room(name: "Coach Car 1",
                                   description: ["There are two sets of rows with chairs facing out."],
                                   roomExits: [MissionOneConstants.kMoveBaggageCar, MissionOneConstants.kMoveCoachCar2],
                                   observeItems: [""],
                                   interactItems: [""],
                                   talkOptions: [""],
                                   attackOptions: [""])
        
        var coachCar2: Room = Room(name: "Coach Car 2",
                                   description: ["There is an aisle separating two rows of booth style seating."],
                                   roomExits: [MissionOneConstants.kMoveCoachCar1, MissionOneConstants.kMoveCoachCar3],
                                   observeItems: [""],
                                   interactItems: [""],
                                   talkOptions: [""],
                                   attackOptions: [""])
        
        var coachCar3: Room = Room(name: "Coach Car 3",
                                   description: ["There are two rows of seats, all facing forward."],
                                   roomExits: [MissionOneConstants.kMoveCoachCar2, MissionOneConstants.kMoveDiningCar],
                                   observeItems: [""],
                                   interactItems: [""],
                                   talkOptions: [""],
                                   attackOptions: [""])
        
        var diningCar: Room = Room(name: "Dining Car",
                                   description: ["There are booths to eat on one side with food service on the other side of the car."],
                                   roomExits: [MissionOneConstants.kMoveCoachCar3, MissionOneConstants.kMoveBarCar],
                                   observeItems: [""],
                                   interactItems: [""],
                                   talkOptions: [""],
                                   attackOptions: [""])
        
        var barCar: Room = Room(name: "Bar Car",
                                description: ["There are people getting drunk."],
                                roomExits: [MissionOneConstants.kMoveDiningCar, MissionOneConstants.kMoveSleepingCar1],
                                observeItems: [""],
                                interactItems: [""],
                                talkOptions: [""],
                                attackOptions: [""])
        
        var sleepingCar1: Room = Room(name: "Sleeping Car 1",
                                      description: ["There are four sleeping compartments."],
                                      roomExits: [MissionOneConstants.kMoveBarCar, MissionOneConstants.kMoveSleepingCar2],
                                      observeItems: [""],
                                      interactItems: [""],
                                      talkOptions: [""],
                                      attackOptions: [""])
        
        var sleepingCar2: Room = Room(name: "Sleeping Car 2",
                                      description: ["There are four sleeping cars.", "One seems to be slightly ajar..."],
                                      roomExits: [MissionOneConstants.kMoveSleepingCar1, MissionOneConstants.kMoveObservationCar],
                                      observeItems: [""],
                                      interactItems: [""],
                                      talkOptions: [""],
                                      attackOptions: [""])
        
        var observationCar: Room = Room(name: "Observation Car",
                                        description: ["The last car.", "You can sit here and watch the scenery go by."],
                                        roomExits: [MissionOneConstants.kMoveSleepingCar2],
                                        observeItems: [""],
                                        interactItems: [""],
                                        talkOptions: [""],
                                        attackOptions: [""])
        
        var missionRooms: [String : Room] = [MissionOneConstants.kPlatform : platform,
                                             MissionOneConstants.kControlCabin : controlCabin,
                                             MissionOneConstants.kEngineCar : engineCar,
                                             MissionOneConstants.kBaggageCar : baggageCar,
                                             MissionOneConstants.kCoachCar1 : coachCar1,
                                             MissionOneConstants.kCoachCar2 : coachCar2,
                                             MissionOneConstants.kCoachCar3 : coachCar3,
                                             MissionOneConstants.kDiningCar : diningCar,
                                             MissionOneConstants.kBarCar : barCar,
                                             MissionOneConstants.kSleepingCar1 : sleepingCar1,
                                             MissionOneConstants.kSleepingCar2 : sleepingCar2,
                                             MissionOneConstants.kObservationCar : observationCar]
        
       
        var missionOne: Mission = Mission(missionName: "Train Mission",
                                          briefing: ["objective" : MissionOneConstants.objective,
                                                     "intel" : MissionOneConstants.intel],
                                          initialRoom: platform,
                                          rooms: missionRooms,
                                          disguiseOptions: ["old man makeup", "blonde bombshell", "porter"],
                                          weaponOptions: ["dagger", "pen w/ sleep dart", "heavy glove"],
                                          gadgetOptions: ["thermal sunglass", "wristwatch lockpick", "magnet boot"],
                                          statusItemOptions: ["sedative", "amphetamine", "psychedelic pill"])
        
        return missionOne
    }

    
}
