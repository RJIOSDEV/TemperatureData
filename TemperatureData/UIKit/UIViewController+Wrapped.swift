//
//  UIViewController+Wrapped.swift
//  QUS
//
//  Created by Dmytro Demchenko on 26.06.2020.
//  Copyright © 2020 Vintish. All rights reserved.
//

import UIKit.UIViewController

extension UIViewController {
    
    var wrapped: UINavigationController {
        let wrappedViewController = UINavigationController(rootViewController: self)
        wrappedViewController.isNavigationBarHidden = true
        return wrappedViewController
    }
}
