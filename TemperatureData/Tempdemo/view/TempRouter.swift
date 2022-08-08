//
//  TempRouter.swift
//  TempData
//
//  Created by rajanOS on 12/03/22.
//

import UIKit
protocol TempRouter: UIViewControllerPresentation {
    func navigateLogin()
    func navigateTerms_Condi()
}



extension ViewController : TempRouter{
    
    func navigateLogin(){
        let story = UIStoryboard(name: "Main", bundle:nil)
           let navigation = story.instantiateViewController(withIdentifier: "TimeStampSideMenuNavigation") as! UINavigationController
           let vc = ViewController()
           vc.modalPresentationStyle = .fullScreen
           navigation.setViewControllers([vc], animated: false)
           //navigation.isNavigationBarHidden = true
           UIApplication.shared.windows.first?.rootViewController = navigation
           UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
    func navigateRegister(){
        
    }
    
    func navigateTerms_Condi(){
           let vc = ViewController()
           vc.modalPresentationStyle = .fullScreen
            UIApplication.shared.windows.first?.rootViewController = vc
           UIApplication.shared.windows.first?.makeKeyAndVisible()
        
//    let story = UIStoryboard(name: "Main", bundle:nil)
//        let vc = story.instantiateViewController(withIdentifier: "TermsConditionViewController")
//        vc.modalPresentationStyle = .fullScreen
//        UIApplication.shared.windows.first?.rootViewController = vc
//        UIApplication.shared.windows.first?.makeKeyAndVisible()
        
//        let termscondiView = TermsConditionModule().viewController()
//        navigationController?.pushViewController(termscondiView, animated: true)
    }
}
