//
//  HelperFunctions.swift
//  SwiftOrientationClassExtension
//
//  Created by Sugam Kalra on 07/12/15.
//  Copyright © 2015 Sugam Kalra. All rights reserved.
//

import UIKit

/**
 Check if we should show rotate screen or not
 
 - returns: the status
 */
func shouldShowRotateInformation() -> Bool {
    return !NSUserDefaults.standardUserDefaults().boolForKey("no-rotate-information")
}

/**
 Set the show rotate information to not be shown anymore for the next launch
 */
func dontShowRotateInformation() {
    NSUserDefaults.standardUserDefaults().setBool(true, forKey: "no-rotate-information")
}


