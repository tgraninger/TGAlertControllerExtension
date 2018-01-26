//
//  BCAlertControllerExtension.swift
//  BitCandy
//
//  Created by Thomas on 1/20/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

extension UIAlertController {
    /*
    Fetches data from store, configures, and presents UIAlertController
    @parameter configuration - an enum used to indicate the UIAlertController's property values.
    @usage - self.presentViewController(BCAlertController(configuration:), animated: completion:)
    */

    convenience init(configuration: BCAlertConfiguration) {
        let alertData = configuration.alertData
        
        self.init(title: alertData.title, message: alertData.message, preferredStyle: alertData.style)
        
        configuration.setActions(self)
    }
}

