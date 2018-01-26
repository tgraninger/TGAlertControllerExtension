//
//  BCAlertDataStore.swift
//  BitCandy
//
//  Created by Thomas on 1/20/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

struct BCAlertDataStore {
	let title: String
	let message: String
	let style: UIAlertControllerStyle
    let actions: [BCAlertActionConfiguration]
	
	init(configuration: BCAlertConfiguration) {
		let alertData = BCAlertDataStore.dataStore[configuration] as! [String : Any]
		
		self.title = alertData["title"] as! String
		self.message = alertData["message"] as! String
		self.style = alertData["style"] as! UIAlertControllerStyle
        self.actions = alertData["actions"] as! [BCAlertActionConfiguration]
	}
	
    /*  @Constant dataStore - Contains property values for each alert type
    //  Designed for scalability - can also be stored in a web service, local file or persistent store.
    */
	static let dataStore: Dictionary<AnyHashable, Any> = [
		BCAlertConfiguration.invalidCredentials : ["title" : "Invalid username or password",
												   "message" : "Please try again",
												   "style" : UIAlertControllerStyle.alert,
                                                   "actions" : [BCAlertActionConfiguration.okAction]],
		BCAlertConfiguration.networkError : ["title" : "Unable to connect",
										   	"message" : "Please connect to network and try again",
											   "style" : UIAlertControllerStyle.alert,
                                               "actions" : [BCAlertActionConfiguration.okAction]],
		BCAlertConfiguration.logout : ["title" : "Logout",
									   "message" : "Logout of your account?",
									   "style" : UIAlertControllerStyle.alert,
                                       "actions" : [BCAlertActionConfiguration.yesAction,        BCAlertActionConfiguration.noAction]]
	]
}


