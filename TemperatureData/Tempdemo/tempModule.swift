//
//  tempModule.swift
//  TempData
//
//  Created by rajanOS on 12/03/22.
//
import Foundation
import UIKit

final class TempModule: ModuleInitializable {
    
    //MARK: - PROPERTIES
    private let view: ViewController
    private let presenter: TempPresenter
    
    //MARK: - INIT/DEINT METHODS
    init() {
        view = R.storyboard.main.ViewController()!
        presenter = TempPresenter(with: view as! TempView, router: view)
        view.presenter = presenter
    }
    
    //MARK: - OTHER METHODS
    func viewController() -> UIViewController {
        return view
    }

}
