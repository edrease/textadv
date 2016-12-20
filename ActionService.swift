//
//  ActionService.swift
//  TEXTADV
//
//  Created by Edrease Peshtaz on 8/28/16.
//  Copyright © 2016 mysterio group. All rights reserved.
//

import Foundation

class ActionService {
    
//MARK: Mission 0
    
    //OFFICE HALLWAY
    
    //OBSERVE
    
    static func observeCarpetStain(_ vc: ViewController) -> [String] {
        let info = ["The stain seems like it has been there for years",
                    "It is shaped like the head of the queen...",
                    "On accident of course. But what an accident!"]
        
        return info
    }
    
    static func observePictureOfMen(_ vc: ViewController) -> [String] {
        let info = ["There are three men pictured, In the middle stands your boss",
                    "You do not recognize the others, but they are very old",
                    "The frame is quite nice"]
        
        vc.currentRoom.interactItems.append("newspaper")
        
        return info
    }
    
//MARK: Mission One - A Train Car Named Live-Wire
    
    //MOVE
    static func moveCabinCar(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        vc.currentRoom = roomList.controlCabin
        vc.roomNameLabel.text = vc.currentRoom.name
        return roomList.controlCabin.description
    }
    
    static func moveEngineCar(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        vc.currentRoom = roomList.engineCar
        vc.roomNameLabel.text = vc.currentRoom.name
        return roomList.engineCar.description
    }
    
    static func moveBaggageCar(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        vc.currentRoom = roomList.baggageCar
        vc.roomNameLabel.text = vc.currentRoom.name
        return roomList.baggageCar.description
    }
    
    static func moveCoachCar1(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        vc.currentRoom = roomList.coachCar1
        vc.roomNameLabel.text = vc.currentRoom.name
        return roomList.coachCar1.description
    }
    
    static func moveCoachCar2(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        vc.currentRoom = roomList.coachCar2
        vc.roomNameLabel.text = vc.currentRoom.name
        return roomList.coachCar2.description
    }
    
    static func moveFromPlatformCoachCar2(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        let player = vc.player
        if player?.checkForItem(item: "boarding pass") == true {
            vc.currentRoom = roomList.coachCar2
            vc.roomNameLabel.text = vc.currentRoom.name
            return roomList.coachCar2.description
        } else {
            return ["Sir, you cannot board without a boarding pass.", "Please buy a ticket with the ticket seller."]
        }
    }
    
    static func moveCoachCar3(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        vc.currentRoom = roomList.coachCar3
        vc.roomNameLabel.text = vc.currentRoom.name
        return roomList.coachCar3.description
    }
    
    static func moveDiningCar(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        vc.currentRoom = roomList.diningCar
        vc.roomNameLabel.text = vc.currentRoom.name
        return roomList.diningCar.description
    }
    
    static func moveBarCar(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        vc.currentRoom = roomList.barCar
        vc.roomNameLabel.text = vc.currentRoom.name
        return roomList.barCar.description
    }
    
    static func moveSleepingCar1(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        vc.currentRoom = roomList.sleepingCar1
        vc.roomNameLabel.text = vc.currentRoom.name
        return roomList.sleepingCar1.description
    }
    
    static func moveSleepingCar2(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        vc.currentRoom = roomList.sleepingCar2
        vc.roomNameLabel.text = vc.currentRoom.name
        return roomList.sleepingCar2.description
    }
    
    static func moveObservationCar(_ vc: ViewController) -> [String] {
        let roomList = RoomList()
        vc.currentRoom = roomList.observationCar
        vc.roomNameLabel.text = vc.currentRoom.name
        return roomList.observationCar.description
    }
    
    //TALK 
    
    static func talkTicketSeller(_ vc: ViewController) -> [String] {
        let player = vc.player
        if player?.checkForItem(item: "boarding pass") == false {
            vc.player.items.append("boarding pass")
            return ["Buying a ticket now.", "The ticket seller looks half asleep.", "I've received my boarding pass."]
        } else {
            return ["I was unenthusiastically reminded that I already bought a boarding pass."]
        }
        
    }
    

    let functions: [String : (ViewController) -> [String]] = [
        
                                    //MOVE
                                                              Constants.kCarpetStain : ActionService.observeCarpetStain,
                                                              Constants.kPictureOfMen : ActionService.observePictureOfMen,
                                                              Constants.kMoveBoardTrain : ActionService.moveFromPlatformCoachCar2,
                                                              Constants.kMoveControlCabin : ActionService.moveCabinCar,
                                                              Constants.kMoveEngineCar : ActionService.moveEngineCar,
                                                              Constants.kMoveBaggageCar : ActionService.moveBaggageCar,
                                                              Constants.kMoveCoachCar1 : ActionService.moveCoachCar1,
                                                              Constants.kMoveCoachCar2 : ActionService.moveCoachCar2,
                                                              Constants.kMoveCoachCar3 : ActionService.moveCoachCar3,
                                                              Constants.kMoveDiningCar : ActionService.moveDiningCar,
                                                              Constants.kMoveBarCar : ActionService.moveBarCar,
                                                              Constants.kMoveSleepingCar1 : ActionService.moveSleepingCar1,
                                                              Constants.kMoveSleepingCar2 : ActionService.moveSleepingCar2,
                                                              Constants.kMoveObservationCar : ActionService.moveObservationCar,
                                    //TALK
                                                              Constants.kTalkTicketSeller : ActionService.talkTicketSeller]
}
