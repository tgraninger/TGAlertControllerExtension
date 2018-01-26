//
//  BCAlertActionDataStore.swift
//  BitCandy
//
//  Created by Thomas Graninger on 1/20/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

struct BCAlertActionDataStore {
    let title: String
    let style: UIAlertActionStyle
    let hasHandler : Bool
    
    init(configuration: BCAlertActionConfiguration) {
        let store = BCAlertActionDataStore.dataStore[configuration] as! [AnyHashable : Any]
        
        self.title = store["title"] as! String
        self.style = store["style"] as! UIAlertActionStyle
        self.hasHandler = store["hasHandler"] as! Bool
    }

    static let dataStore: Dictionary<AnyHashable, Any> = [
        BCAlertActionConfiguration.okAction : ["title" : "OK",
                      "style" : UIAlertActionStyle.default,
                      "hasHandler" : false],
        BCAlertActionConfiguration.cancelAction : ["title" : "Cancel",
                          "style" : UIAlertActionStyle.cancel,
                          "hasHandler" : false],
        BCAlertActionConfiguration.yesAction : ["title" : "Yes",
                              "style" : UIAlertActionStyle.default,
                              "hasHandler" : true],
        BCAlertActionConfiguration.noAction : ["title" : "Yes",
                          "style" : UIAlertActionStyle.default,
                          "hasHandler" : true]
    ]
}
