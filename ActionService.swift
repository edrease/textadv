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
    
    let functions: [String : (ViewController) -> [String]] = [Constants.kCarpetStain : ActionService.observeCarpetStain,
                                                              Constants.kPictureOfMen : ActionService.observePictureOfMen]
}
