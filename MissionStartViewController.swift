//
//  MissionStartViewController.swift
//  TEXTADV
//
//  Created by Edrease Peshtaz on 9/30/16.
//  Copyright © 2016 mysterio group. All rights reserved.
//

import UIKit

class MissionStartViewController: UIViewController {
    
    let appleIIFontColor = UIColor(red: 84/255, green: 194/255, blue: 113/255, alpha: 1)
    var missionSplashScreen: UIView!
    var missionBriefingScreen: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.missionSplashScreen = self.createMissionSplashScreen()
        self.missionBriefingScreen = self.createMissionBriefView()
        self.view.addSubview(self.missionBriefingScreen)
    }
    
//MARK: View Creation Functions
    
    func createMissionSplashScreen() -> UIView {
        let missionSplashScreen = UIView(frame: self.view.frame)
        missionSplashScreen.backgroundColor = UIColor.black
        
        let missionLabel = UILabel()
        missionLabel.text = "Mission 0"
        missionLabel.textColor = self.appleIIFontColor
        missionLabel.sizeToFit()
        GlowEffect.addToLabel(label: missionLabel)
        let center = self.view.center
        missionLabel.center = center
        missionSplashScreen.addSubview(missionLabel)
        
        return missionSplashScreen
    }
    
    func createMissionBriefView() -> UIView {
        
        //Create main view
        let missionBriefView = UIView(frame: self.view.frame)
        missionBriefView.backgroundColor = UIColor.black
        
        //Create and add headline label
        let mainHeadlineLabel = UILabel()
        self.setupLabel(label: mainHeadlineLabel, labelText: "Mission 0 Briefing", superview: missionBriefView, yMultiplier: 0.2, xMultiplier: 1)
        
        /*
        mainHeadlineLabel.text = "Mission 0 Briefing"
        mainHeadlineLabel.font = UIFont(name: Constants.regularAppleFont, size: 12.0)
        mainHeadlineLabel.textColor = self.appleIIFontColor
        mainHeadlineLabel.sizeToFit()
        mainHeadlineLabel.translatesAutoresizingMaskIntoConstraints = false
        GlowEffect.addToLabel(label: mainHeadlineLabel)
        
        missionBriefView.addSubview(mainHeadlineLabel)
        
        let mainHeadlineLabelVerticalConstraint = NSLayoutConstraint(item: mainHeadlineLabel, attribute: .centerY, relatedBy: .equal, toItem: missionBriefView, attribute: .centerY, multiplier: 0.2, constant: 0)
        let mainHeadlineLabelHorizontalConstraint = NSLayoutConstraint(item: mainHeadlineLabel, attribute: .centerX, relatedBy: .equal, toItem: missionBriefView, attribute: .centerX, multiplier: 1, constant: 0)
        
        missionBriefView.addConstraint(mainHeadlineLabelVerticalConstraint)
        missionBriefView.addConstraint(mainHeadlineLabelHorizontalConstraint)
        */
        
        //Create and add subtitle
        let subtitleLabel = UILabel()
        subtitleLabel.text = "Objective: "
        subtitleLabel.font = UIFont(name: Constants.regularAppleFont, size: 12.0)
        subtitleLabel.textColor = self.appleIIFontColor
        subtitleLabel.sizeToFit()
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        GlowEffect.addToLabel(label: subtitleLabel)
        
        missionBriefView.addSubview(subtitleLabel)
        
        let subtitleLabelVerticalConstraint = NSLayoutConstraint(item: subtitleLabel, attribute: .centerY, relatedBy: .equal, toItem: missionBriefView, attribute: .centerY, multiplier: 0.4, constant: 0)
        let subtitleLabelHorizontalConstraint = NSLayoutConstraint(item: subtitleLabel, attribute: .centerX, relatedBy: .equal, toItem: missionBriefView, attribute: .centerX, multiplier: 1, constant: 0)
        
        missionBriefView.addConstraint(subtitleLabelVerticalConstraint)
        missionBriefView.addConstraint(subtitleLabelHorizontalConstraint)
        
        //Create and add info text view
        
        return missionBriefView
    }
    
//MARK: Helper functions
    
    func setupLabel(label: UILabel, labelText: String, superview: UIView, yMultiplier: CGFloat, xMultiplier: CGFloat) {
        
        label.text = labelText
        label.font = UIFont(name: Constants.regularAppleFont, size: 12.0)
        label.textColor = self.appleIIFontColor
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        GlowEffect.addToLabel(label: label)
        
        superview.addSubview(label)
        
        let labelVerticalConstraint = NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: superview, attribute: .centerY, multiplier: yMultiplier, constant: 0)
        let labelHorizontalConstraint = NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: superview, attribute: .centerX, multiplier: xMultiplier, constant: 0)
        
        label.addConstraint(labelVerticalConstraint)
        label.addConstraint(labelHorizontalConstraint)
    }
    
}
