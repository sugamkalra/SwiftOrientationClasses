//
//  AlmaRotateYourPhoneViewController.swift
//  SwiftOrientationClassExtension
//
//  Created by Sugam Kalra on 07/12/15.
//  Copyright © 2015 Sugam Kalra. All rights reserved.
//

import UIKit

/**
 * AlmaRotateYourPhoneViewController
 *
 * @author Sugam
 * @version 1.0
 */
class AlmaRotateYourPhoneViewController: UIViewController {
    
    /// outlets
    @IBOutlet weak var dontShowMeButton: UIButton!
    
    /**
     orientation support
     */
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }
    
}
