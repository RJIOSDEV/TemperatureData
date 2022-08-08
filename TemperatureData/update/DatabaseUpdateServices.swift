//
//  DatabaseUpdateServices.swift
//  TempData
//
//  Created by rajanOS on 12/03/22.
//

import Foundation
class DatabaseUpdateService: NSObject {
    
    static let shared = DatabaseUpdateService()
    private let systemErrorKey = "Network system error"


func login( 
           completion:@escaping (_ errors:[String:String]?, _ success:Bool, _ response:ResponseArrayWithData<Temperature>?)->()) {
    
    TempApi.shared.login { (error, data, type) in
        guard let data = data else {
            if let error = error {
                completion([self.systemErrorKey:error.localizedDescription], false, nil)
            } else {
                completion(nil, false, nil)
            }
            return
        }
        
        do {
            let response = try JSONDecoder().decode(ResponseArrayWithData<Temperature>.self, from: data)
            completion(nil, true, response)
        } catch {
            completion([self.systemErrorKey:error.localizedDescription], false, nil)
        }
    }
}
}
