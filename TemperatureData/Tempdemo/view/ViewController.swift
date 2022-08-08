//
//  ViewController.swift
//  TemperatureData
//
//  Created by rajanOS on 12/03/22.
//
//
//  ViewController.swift
//  TempData
//
//  Created by rajanOS on 11/03/22.
//

import UIKit
import SwiftUI

protocol TempView: AnyObject {
    func generateAlert(msg: String)
}

class TempVc: UIViewController {
    
    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var myTable: UITableView!
    var tempdata = [Temperature]()
    var presenter : TempPresenter!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       myTable.delegate = self
       myTable.dataSource = self
        // Do any additional setup after loading the view.
        myTable.reloadData()
        
        self.presenter.callLoginAPI()
    }


    @IBAction func segView(_ sender: Any) {
    }
 
    
}
extension ViewController: UITableViewDelegate,UITableViewDataSource {
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

            return tempdata.count
       
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell1
//
//        let x = tempdata[indexPath.row].lastupdate
//             if let xx = x {
//                 let epocTime = TimeInterval(xx)
//                 let xx = Date(timeIntervalSince1970: epocTime)
//
//                 let formatter3 = DateFormatter()
//                 formatter3.dateFormat = "HH:mm a  d MMM y"
//
//                 self.searchbar.searchTextField.endEditing(true)
//
//                 cell.lbl3.text = "\(formatter3.string(from: xx))"
//             } else {
//                 cell.lbl3.text = "\(x)"
//             }
//  //      spinner.show(in: view)
//        cell.lbl1.text = tempdata[indexPath.row]
//        cell.lbl2.text = tempdata[indexPath.row].weatherCondition
//
//        cell.lbl3.text = "\(newList[indexPath.row].lastupdate)"
//        cell.lbl4.text = tempdata[indexPath.row].weatherTemp
//
        
       // cell.lbl1.text = self.title[indexPath.row].name ?? ""
//        }
        print(UserModel.userModel as Any)
        
        return cell
    }
}
