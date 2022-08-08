//
//  subClass.swift
//  TempData
//
//  Created by rajanOS on 12/03/22.
//

import Foundation
import UIKit
import ARSLineProgress

class Main: UIViewController {
public class CommonFunctions: NSObject  {
    
    static let shared: CommonFunctions = {
        CommonFunctions()
    }()
    func showLoader() {
        ARSLineProgress.show()
    }
    
    func hideLoader() {
        ARSLineProgress.hide()
    }
    
    
}
}
