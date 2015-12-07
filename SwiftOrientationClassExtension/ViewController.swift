//
//  ViewController.swift
//  SwiftOrientationClassExtension
//
//  Created by Sugam Kalra on 07/12/15.
//  Copyright © 2015 Sugam Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // This is how to handle orientation problems
        
        if shouldShowRotateInformation()
        {
            let almaRotateYourPhoneVC = create(AlmaRotateYourPhoneViewController.self, storyboardName: "CaneQuality")!
            self.presentViewController(almaRotateYourPhoneVC, animated: true, completion: nil)
        }
        else
        {
            let storyboard = UIStoryboard(name: "CaneQuality", bundle: nil)
            let controller = storyboard.instantiateViewControllerWithIdentifier("InitialController") as UIViewController
            self.presentViewController(controller, animated: true, completion: nil)
        }
        

        
    }
    
    
    /**
     Create a view controller from storyboard.
     By default will load from the same storyboard of self storyboard.
     
     - parameters:
     - controllerClass: type of controller
     - storyboardName: the name of storyboard
     
     - returns: the controller instance from storyboard
     */
    func create<T: UIViewController>(controllerClass: T.Type, storyboardName: String? = nil) -> T? {
        let className = NSStringFromClass(controllerClass).componentsSeparatedByString(".").last!
        var storyboard = self.storyboard
        if let storyboardName = storyboardName {
            storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        }
        let controller = storyboard?.instantiateViewControllerWithIdentifier(className) as? T
        return controller
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

