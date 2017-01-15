//
//  ActionService.swift
//  TEXTADV
//
//  Created by Edrease Peshtaz on 8/28/16.
//  Copyright © 2016 mysterio group. All rights reserved.
//

import Foundation

class ActionService {
    
//MARK: Mission One - A Train Car Named Live-Wire
    
    //MOVE
    static func moveCabinCar(_ vc: ViewController) -> [String] {
        vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kControlCabin]
        vc.roomNameLabel.text = vc.currentRoom.name
        return vc.currentRoom.description
    }
    
    static func moveEngineCar(_ vc: ViewController) -> [String] {
        vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kEngineCar]
        vc.roomNameLabel.text = vc.currentRoom.name
        return vc.currentRoom.description
    }
    
    static func moveBaggageCar(_ vc: ViewController) -> [String] {
        vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kBaggageCar]
        vc.roomNameLabel.text = vc.currentRoom.name
        return vc.currentRoom.description
    }
    
    static func moveCoachCar1(_ vc: ViewController) -> [String] {
        vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kCoachCar1]
        vc.roomNameLabel.text = vc.currentRoom.name
        return vc.currentRoom.description
    }
    
    static func moveCoachCar2(_ vc: ViewController) -> [String] {
        vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kCoachCar2]
        vc.roomNameLabel.text = vc.currentRoom.name
        return vc.currentRoom.description
    }
    
    static func moveFromPlatformCoachCar2(_ vc: ViewController) -> [String] {
        let player = vc.player
        if player?.checkForItem(item: "boarding pass") == true {
            vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kCoachCar2]
            vc.roomNameLabel.text = vc.currentRoom.name
            return vc.currentRoom.description
        } else {
            return ["Sir, you cannot board without a boarding pass.", "Please buy a ticket with the ticket seller."]
        }
    }
    
    static func moveCoachCar3(_ vc: ViewController) -> [String] {
        vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kCoachCar3]
        vc.roomNameLabel.text = vc.currentRoom.name
        return vc.currentRoom.description
    }
    
    static func moveDiningCar(_ vc: ViewController) -> [String] {
        vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kDiningCar]
        vc.roomNameLabel.text = vc.currentRoom.name
        return vc.currentRoom.description
    }
    
    static func moveBarCar(_ vc: ViewController) -> [String] {
        vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kBarCar]
        vc.roomNameLabel.text = vc.currentRoom.name
        return vc.currentRoom.description
    }
    
    static func moveSleepingCar1(_ vc: ViewController) -> [String] {
        vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kSleepingCar1]
        vc.roomNameLabel.text = vc.currentRoom.name
        return vc.currentRoom.description
    }
    
    static func moveSleepingCar2(_ vc: ViewController) -> [String] {
        vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kSleepingCar2]
        vc.roomNameLabel.text = vc.currentRoom.name
        return vc.currentRoom.description
    }
    
    static func moveObservationCar(_ vc: ViewController) -> [String] {
        vc.currentRoom = vc.currentMission.rooms[MissionOneConstants.kObservationCar]
        vc.roomNameLabel.text = vc.currentRoom.name
        return vc.currentRoom.description
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
    
    //ATTACK
    
    static func attackPorter(_ vc: ViewController) -> [String] {
        vc.displayEndGameView()
        return ["You shouldn't have done that..."]
    }
    

    var functions: [String : (ViewController) -> [String]] = [
        
                                    //MOVE
                                                              MissionOneConstants.kMoveBoardTrain : ActionService.moveFromPlatformCoachCar2,
                                                              MissionOneConstants.kMoveControlCabin : ActionService.moveCabinCar,
                                                              MissionOneConstants.kMoveEngineCar : ActionService.moveEngineCar,
                                                              MissionOneConstants.kMoveBaggageCar : ActionService.moveBaggageCar,
                                                              MissionOneConstants.kMoveCoachCar1 : ActionService.moveCoachCar1,
                                                              MissionOneConstants.kMoveCoachCar2 : ActionService.moveCoachCar2,
                                                              MissionOneConstants.kMoveCoachCar3 : ActionService.moveCoachCar3,
                                                              MissionOneConstants.kMoveDiningCar : ActionService.moveDiningCar,
                                                              MissionOneConstants.kMoveBarCar : ActionService.moveBarCar,
                                                              MissionOneConstants.kMoveSleepingCar1 : ActionService.moveSleepingCar1,
                                                              MissionOneConstants.kMoveSleepingCar2 : ActionService.moveSleepingCar2,
                                                              MissionOneConstants.kMoveObservationCar : ActionService.moveObservationCar,
                                    //TALK
                                                              MissionOneConstants.kTalkTicketSeller : ActionService.talkTicketSeller,
                                                              
                                                              MissionOneConstants.kAttackPorter : ActionService.attackPorter]
}
