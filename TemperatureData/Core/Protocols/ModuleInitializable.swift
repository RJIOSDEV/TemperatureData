//
//  ModuleInitializable.swift
//  CNB
//
//  Created by My Mac on 22/06/20.
//  Copyright © 2020 My Mac. All rights reserved.
//

import UIKit

public protocol BaseModule {
    func viewController() -> UIViewController
}

typealias ModuleInitializable = BaseModule & Initializable

protocol Initializable {
    init()
}

extension Initializable {
    
    static var stringValue: String {
        return String(describing: self)
    }
}
