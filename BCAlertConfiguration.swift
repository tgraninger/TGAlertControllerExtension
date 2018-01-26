//
//  BCAlertConfiguration.swift
//  BitCandy
//
//  Created by Thomas on 1/20/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

/** @protocol BCAlertable
    @var alertData - fetches data from store that is needed to initialize UIAlertController
    @func setActions - adds all actions required for the UIAlertController
*/

protocol BCAlertConfigurable {
	var alertData: BCAlertDataStore { get }
    
    func setActions(_ alertController: UIAlertController)
}

enum BCAlertConfiguration: BCAlertConfigurable {
	case invalidCredentials
	case networkError
	case logout
	
	var alertData: BCAlertDataStore {
		return BCAlertDataStore(configuration: self)
	}
    
    func setActions(_ alertController: UIAlertController) {
        for action in alertData.actions {
            alertController.addAction(action.configureAction())
        }
    }
}
