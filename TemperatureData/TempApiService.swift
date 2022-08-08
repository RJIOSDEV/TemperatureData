//
//  TempApiService.swift
//  TempData
//
//  Created by rajanOS on 11/03/22.
//


import Foundation
import UIKit

let prodHost: String = "http://www.keshavinfotechdemo.com/KESHAV/UPDATE/07/iphone/Trainee/weather.json"
//let prodHost: String = "http://5.44.240.52/MyAppBETA/"

class TempApi: NSObject {
    
    static var shared = TempApi()
    
    private let baseUrl = prodHost //stageHost
    
    private var networkingService: NetworkingService = NetworkingService()
    
    
    func login(
               completion:@escaping (_ error:Error?, _ data:Data?,_ type:String?)->()) {
        let url = baseUrl
    
      //  let bodyString = "user_email=\(username)&user_password=\(password)"

        print(url)
        
        networkingService.connect(type: .get,
                                  url: url,
//                                  inBodyParametersString: bodyString,
                                  completion: { (error, data, type) in
                                    completion(error, data, type?.rawValue)
        })
        
        
    }
}
