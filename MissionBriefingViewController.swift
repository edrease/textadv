//
//  MissionBriefingViewController.swift
//  TEXTADV
//
//  Created by Edrease Peshtaz on 10/19/16.
//  Copyright © 2016 mysterio group. All rights reserved.
//

import UIKit

class MissionBriefingViewController: UIViewController {
    
    var backgroundView: UIView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backgroundView?.frame = self.view.frame
        self.backgroundView?.backgroundColor = UIColor.purple
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
