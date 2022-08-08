//
//  TempPresenter.swift
//  TempData
//
//  Created by rajanOS on 12/03/22.
//


import Foundation
import UIKit

final class TempPresenter {
    
    //MARK: - PROPERTIES
    private var view: TempView!
    private var router: TempRouter!
    
    
    //MARK: - INIT/DEINT METHODS
    init(with view: TempView, router: TempRouter) {
        self.view = view
        self.router = router
    }
}

    //MARK: - EXTENSIONS
extension TempPresenter{
    
//    func validateEmail(email: String) -> Bool {
//        let emailRegExp = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegExp)
//        return emailTest.evaluate(with: email)
//    }
//
//    func validatePassword(password: String) -> Bool {
//        if password.count >= 6 && password.count <= 18{
//            return true
//        }else{
//            return false
//        }
//    }
    
    func callLoginAPI (){
        
        DatabaseUpdateService.shared.login { (errors, success, response) in
            guard success else{
                return
            }
            print(response?.data as! [[String:Any]])
            if response?.status == "is_okay"{
            //    print(response?.status ?? "")
////print(response?.message ?? "")
////                UserModel.sharedInstance().email = email
////                UserModel.sharedInstance().password = password
////                UserModel.sharedInstance().user_id = response?.data?.data?._venueID ?? ""
////                UserModel.sharedInstance().company_id = response?.data?.data?._name ?? ""
////                UserModel.sharedInstance().name = response?.data?.data?._country ?? ""
////                UserModel.sharedInstance().designation = response?.data?.data?._weatherLastUpdated ?? ""
////                UserModel.sharedInstance().last_project_id = response?.data?.data?._weatherTemp ?? ""
////                UserModel.sharedInstance().is_auto_lunch = response?.data?.data?._weatherWind ?? ""
////                UserModel.sharedInstance().today = response?.data?.data?._weatherHumidity ?? ""
////                UserModel.sharedInstance().week = response?.data?.data?._weatherCondition ?? ""
////                UserModel.sharedInstance().month = response?.data?.data?._weatherFeelsLike ?? ""
////                UserModel.sharedInstance().balance = response?.data?.data?._sport ?? ""
////                UserModel.sharedInstance().all_time_balance = response?.data?.data?._weatherConditionIcon ?? ""
//                UserModel.sharedInstance().synchroniseData()
                print(response?.data)
//                UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
//                UserDefaults.standard.synchronize()
//                self.router.navigateLogin()
//            }else{
//                self.view.generateAlert(msg: "UserName or Password is incorrect. Please try again!")
//                print(errors as Any)
//            }
//
//        }
//    }
//}
//            func callGetTodayTasksApi(){
//              //  DatabaseUpdateService.shared
////                UserModel.sharedInstance().user_id!) { (errors, success , response) in
//                    guard success else{
//                        return
//                    }
            }
        }
    }
}
