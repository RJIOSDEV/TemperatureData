//
//  UserModel.swift
//  TempData
//
//  Created by rajanOS on 12/03/22.
//

import UIKit

class UserModel: NSObject, NSCoding {
    
    
    var _venueID : String?
    var _name : String?
    var _country : String?
    var _weatherCondition : String?
    var _weatherConditionIcon : String?
    var _weatherWind : String?
    var _weatherHumidity : String?
    var _weatherTemp : String?
    var _weatherFeelsLike : String?
    var _sport : String?
    var _weatherLastUpdated : String?
    var user_id : String?
    var company_id : String?
    var name : String?
    var designation: String?
    var last_project_id: String?
    var is_auto_lunch: String?
    var today: String?
    var week: String?
    var month: String?
    var balance: String?
    var all_time_balance: String?
    var latitude : String?
    var longitude : String?
    var address : String?
    var email : String?
    var password : String?
    var lastUpdatedProjectName : String?
    var lang : String?
    var selectedLangName : String?
    var checkInAlarmTime : String?
    var checkOutAlarmTime : String?
    var lunchInAlarmTime : String?
    var isCheckedIn : String?
    var checkInTime: String?
    var checkOutTime: String?
    var overtimeCheckInTime: String?
    var overtimeCheckOutTime: String?
    var lunchInTime: String?
    var lunchOutTime: String?
    var isTaskStated : Bool?
    var selectedTaskId : String?
    var selectedTaskStartTime : String?
    var selectedProjectStartTime : String?
    var isOverTimeStarted : Bool?
    var overTimeStartTime : String?
    var selectedIndex: Int?
    
    static var userModel: UserModel?
    static func sharedInstance() -> UserModel {
        if UserModel.userModel == nil {
            if let data = UserDefaults.standard.value(forKey: "UserModel") as? Data {
                let retrievedObject = NSKeyedUnarchiver.unarchiveObject(with: data)
                if let objUserModel = retrievedObject as? UserModel {
                    UserModel.userModel = objUserModel
                    return objUserModel
                }
            }
            
            if UserModel.userModel == nil {
                UserModel.userModel = UserModel.init()
            }
            return UserModel.userModel!
        }
        return UserModel.userModel!
    }
    
    override init() {
        
    }
        
    func synchroniseData(){
        let data : Data = NSKeyedArchiver.archivedData(withRootObject: self)
        UserDefaults.standard.set(data, forKey: "UserModel")
        UserDefaults.standard.synchronize()
    }
    
    func removeData() {
        UserModel.userModel = nil
        UserDefaults.standard.removeObject(forKey: "UserModel")
        UserDefaults.standard.synchronize()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init()
        self._venueID = aDecoder.decodeObject(forKey: "_venueID") as? String
        self._name = aDecoder.decodeObject(forKey: "_name") as? String
        self._country = aDecoder .decodeObject(forKey: "_country") as? String
        self._weatherCondition = aDecoder.decodeObject(forKey: "_weatherCondition") as? String
        self._weatherWind = aDecoder .decodeObject(forKey: "_weatherWind") as? String
        self._weatherConditionIcon = aDecoder.decodeObject(forKey: "_weatherConditionIcon") as? String
        self._weatherHumidity = aDecoder.decodeObject(forKey: "_weatherHumidity") as? String
        self._weatherTemp = aDecoder.decodeObject(forKey: "_weatherTemp") as? String
        self._weatherFeelsLike = aDecoder .decodeObject(forKey: "_weatherFeelsLike") as? String
        self._sport = aDecoder .decodeObject(forKey: "_sport") as? String
        self._weatherLastUpdated = aDecoder.decodeObject(forKey: "_weatherLastUpdated") as? String
        self.user_id = aDecoder.decodeObject(forKey: "user_id") as? String
        self.company_id = aDecoder.decodeObject(forKey: "company_id") as? String
        self.name = aDecoder.decodeObject(forKey: "name") as? String
        self.designation = aDecoder.decodeObject(forKey: "designation") as? String
        self.last_project_id = aDecoder.decodeObject(forKey: "last_project_id") as? String
        self.is_auto_lunch = aDecoder.decodeObject(forKey: "is_auto_lunch") as? String
        self.today = aDecoder.decodeObject(forKey: "today") as? String
        self.week = aDecoder.decodeObject(forKey: "week") as? String
        self.month = aDecoder.decodeObject(forKey: "month") as? String
        self.balance = aDecoder.decodeObject(forKey: "balance") as? String
        self.all_time_balance = aDecoder.decodeObject(forKey: "all_time_balance") as? String
        self.latitude = aDecoder.decodeObject(forKey: "latitude") as? String
        self.longitude = aDecoder.decodeObject(forKey: "longitude") as? String
        self.address = aDecoder.decodeObject(forKey: "address") as? String
        self.email = aDecoder.decodeObject(forKey: "email") as? String
        self.password = aDecoder.decodeObject(forKey: "password") as? String
        self.lastUpdatedProjectName = aDecoder.decodeObject(forKey: "lastUpdatedProjectName") as? String
        self.lang = aDecoder.decodeObject(forKey: "lang") as? String
        self.selectedLangName = aDecoder.decodeObject(forKey: "selectedLangName") as? String
        self.checkInAlarmTime = aDecoder.decodeObject(forKey: "checkInAlarmTime") as? String
        self.checkOutAlarmTime = aDecoder.decodeObject(forKey: "checkOutAlarmTime") as? String
        self.lunchInAlarmTime = aDecoder.decodeObject(forKey: "lunchInAlarmTime") as? String
        self.isCheckedIn = aDecoder.decodeObject(forKey: "isCheckedIn") as? String
        self.checkInTime = aDecoder.decodeObject(forKey: "checkInTime") as? String
        self.checkOutTime = aDecoder.decodeObject(forKey: "checkOutTime") as? String
        self.lunchInTime = aDecoder.decodeObject(forKey: "lunchInTime") as? String
        self.lunchOutTime = aDecoder.decodeObject(forKey: "lunchOutTime") as? String
        self.isTaskStated = aDecoder.decodeObject(forKey: "isTaskStated") as? Bool
        self.selectedTaskId = aDecoder.decodeObject(forKey: "selectedTaskId") as? String
        self.selectedTaskStartTime = aDecoder.decodeObject(forKey: "selectedTaskStartTime") as? String
        self.selectedProjectStartTime = aDecoder.decodeObject(forKey: "selectedProjectStartTime") as? String
        self.isOverTimeStarted = aDecoder.decodeObject(forKey: "isOverTimeStarted") as? Bool
        self.overTimeStartTime = aDecoder.decodeObject(forKey: "overTimeStartTime") as? String
        self.selectedIndex = aDecoder.decodeObject(forKey: "selectedIndex") as? Int
        self.overtimeCheckInTime = aDecoder.decodeObject(forKey: "overtimeCheckInTime") as? String
        self.overtimeCheckOutTime = aDecoder.decodeObject(forKey: "overtimeCheckOutTime") as? String
        
    }
    
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self._venueID, forKey: "_venueID")
        aCoder.encode(self._name, forKey: "_name")
        aCoder.encode(self._venueID, forKey: "_venueID")
        aCoder.encode(self._venueID, forKey: "_venueID")
        aCoder.encode(self._venueID, forKey: "_venueID")
        aCoder.encode(self._venueID, forKey: "_venueID")
        aCoder.encode(self._venueID, forKey: "_venueID")
        aCoder.encode(self._venueID, forKey: "_venueID")
    
    
        
        
        
        aCoder.encode(self.user_id, forKey: "user_id")
        aCoder.encode(self.company_id, forKey: "company_id")
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.designation, forKey: "designation")
        aCoder.encode(self.last_project_id, forKey: "last_project_id")
        aCoder.encode(self.is_auto_lunch, forKey: "is_auto_lunch")
        aCoder.encode(self.today, forKey: "today")
        aCoder.encode(self.week, forKey: "week")
        aCoder.encode(self.month, forKey: "month")
        aCoder.encode(self.balance, forKey: "balance")
        aCoder.encode(self.all_time_balance, forKey: "all_time_balance")
        aCoder.encode(self.latitude, forKey: "latitude")
        aCoder.encode(self.longitude, forKey: "longitude")
        aCoder.encode(self.address, forKey: "address")
        aCoder.encode(self.email, forKey: "email")
        aCoder.encode(self.password, forKey: "password")
        aCoder.encode(self.lastUpdatedProjectName, forKey: "lastUpdatedProjectName")
        aCoder.encode(self.lang, forKey: "lang")
        aCoder.encode(self.selectedLangName, forKey: "selectedLangName")
        aCoder.encode(self.checkInAlarmTime, forKey: "checkInAlarmTime")
        aCoder.encode(self.checkOutAlarmTime, forKey: "checkOutAlarmTime")
        aCoder.encode(self.lunchInAlarmTime, forKey: "lunchInAlarmTime")
        aCoder.encode(self.isCheckedIn, forKey: "isCheckedIn")
        aCoder.encode(self.checkInTime, forKey: "checkInTime")
        aCoder.encode(self.checkOutTime, forKey: "checkOutTime")
        aCoder.encode(self.lunchInTime, forKey: "lunchInTime")
        aCoder.encode(self.lunchOutTime, forKey: "lunchOutTime")
        aCoder.encode(self.isTaskStated, forKey: "isTaskStated")
        aCoder.encode(self.selectedTaskId, forKey: "selectedTaskId")
        aCoder.encode(self.selectedTaskStartTime, forKey: "selectedTaskStartTime")
        aCoder.encode(self.selectedProjectStartTime, forKey: "selectedProjectStartTime")
        aCoder.encode(self.isOverTimeStarted, forKey: "isOverTimeStarted")
        aCoder.encode(self.overTimeStartTime, forKey: "overTimeStartTime")
        aCoder.encode(self.selectedIndex, forKey: "selectedIndex")
        aCoder.encode(self.overtimeCheckInTime, forKey: "overtimeCheckInTime")
        aCoder.encode(self.overtimeCheckOutTime, forKey: "overtimeCheckOutTime")
    }

}

