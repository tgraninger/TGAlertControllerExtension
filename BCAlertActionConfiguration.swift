//
//  BCAlertActionConfiguration.swift
//  BitCandy
//
//  Created by Thomas on 1/20/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

protocol BCAlertActionConfigurable {
    func configureAction() -> UIAlertAction
}

enum BCAlertActionConfiguration: BCAlertActionConfigurable {
    case okAction
    case cancelAction
    case yesAction
    case noAction
    
    func configureAction() -> UIAlertAction {
        let data = BCAlertActionDataStore(configuration: self)
        
        return UIAlertAction(title: data.title, style: data.style, handler: nil)
    }
}

protocol BCAlertActionDelegate {
    func handleAlertAction(_ action: UIAlertAction)
}

