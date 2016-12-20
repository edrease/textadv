//
//  RoomList.swift
//  TEXTADV
//
//  Created by Edrease Peshtaz on 12/13/16.
//  Copyright © 2016 mysterio group. All rights reserved.
//

import Foundation

class RoomList {
    
    //MISSION ONE: A TRAIN CAR NAMED LIVE WIRE
    
    var controlCabin: Room = Room(name: "Control Cabin",
                                  description: ["The conducter is standing in front of his equipment panel, looking stoically forward."],
                                  roomExits: [Constants.kMoveEngineCar],
                                  observeItems: [""],
                                  interactItems: [""],
                                  talkOptions: [""],
                                  attackOptions: [""])
    
    
    var engineCar: Room = Room(name: "Engine Car",
                               description: ["There is a large, loud engine that takes up nearly the whole car."],
                               roomExits: [Constants.kMoveControlCabin, Constants.kMoveBaggageCar],
                               observeItems: [""],
                               interactItems: [""],
                               talkOptions: [""],
                               attackOptions: [""])
    
    var baggageCar: Room = Room(name: "Baggage Car",
                                description: ["All of the passangers luggages have been stored in this car."],
                                roomExits: [Constants.kMoveEngineCar, Constants.kMoveCoachCar1],
                                observeItems: [""],
                                interactItems: [""],
                                talkOptions: [""],
                                attackOptions: [""])
    
    var coachCar1: Room = Room(name: "Coach Car 1",
                                 description: ["There are two sets of rows with chairs facing out."],
                                 roomExits: [Constants.kMoveBaggageCar, Constants.kMoveCoachCar2],
                                 observeItems: [""],
                                 interactItems: [""],
                                 talkOptions: [""],
                                 attackOptions: [""])
    
    var coachCar2: Room = Room(name: "Coach Car 2",
                                 description: ["There is an aisle separating two rows of booth style seating."],
                                 roomExits: [Constants.kMoveCoachCar1, Constants.kMoveCoachCar3],
                                 observeItems: [""],
                                 interactItems: [""],
                                 talkOptions: [""],
                                 attackOptions: [""])
    
    var coachCar3: Room = Room(name: "Coach Car 3",
                                   description: ["There are two rows of seats, all facing forward."],
                                   roomExits: [Constants.kMoveCoachCar2, Constants.kMoveDiningCar],
                                   observeItems: [""],
                                   interactItems: [""],
                                   talkOptions: [""],
                                   attackOptions: [""])
    
    var diningCar: Room = Room(name: "Dining Car",
                               description: ["There are booths to eat on one side with food service on the other side of the car."],
                               roomExits: [Constants.kMoveCoachCar3, Constants.kMoveBarCar],
                               observeItems: [""],
                               interactItems: [""],
                               talkOptions: [""],
                               attackOptions: [""])
    
    var barCar: Room = Room(name: "Bar Car",
                            description: ["There are people getting drunk."],
                            roomExits: [Constants.kMoveDiningCar, Constants.kMoveSleepingCar1],
                            observeItems: [""],
                            interactItems: [""],
                            talkOptions: [""],
                            attackOptions: [""])
    
    var sleepingCar1: Room = Room(name: "Sleeping Car 1",
                                    description: ["There are four sleeping compartments."],
                                    roomExits: [Constants.kMoveBarCar, Constants.kMoveSleepingCar2],
                                    observeItems: [""],
                                    interactItems: [""],
                                    talkOptions: [""],
                                    attackOptions: [""])
    
    var sleepingCar2: Room = Room(name: "Sleeping Car 2",
                                    description: ["There are four sleeping cars.", "One seems to be slightly ajar..."],
                                    roomExits: [Constants.kMoveSleepingCar1, Constants.kMoveObservationCar],
                                    observeItems: [""],
                                    interactItems: [""],
                                    talkOptions: [""],
                                    attackOptions: [""])
    
    var observationCar: Room = Room(name: "Observation Car",
                                    description: ["The last car.", "You can sit here and watch the scenery go by."],
                                    roomExits: [Constants.kMoveSleepingCar2],
                                    observeItems: [""],
                                    interactItems: [""],
                                    talkOptions: [""],
                                    attackOptions: [""])
    
}
