//
//  tempModel.swift
//  TempData
//
//  Created by rajanOS on 11/03/22.
//


import Foundation

struct Temperature : Codable {
    
    let data : TempratureData?
    let isOkay : String?
    let ret : String?
    
    enum CodingKeys: String, CodingKey {
        case data = "data"
        case isOkay = "message"
        case ret = "status"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try TempratureData(from: decoder)
        isOkay = try values.decodeIfPresent(String.self, forKey: .isOkay)
        ret = try values.decodeIfPresent(String.self, forKey: .ret)
    }
    
}

//"_venueID": "97",
//           "_name": "Adelaide River",
//           "_country": {
//               "_countryID": "16",
//               "_name": "Australia"
//           },
//           "_weatherCondition": "Partly Cloudy",
//           "_weatherConditionIcon": "partlycloudy",
//           "_weatherWind": "Wind: ESE at 17kph",
//           "_weatherHumidity": "Humidity: 65%",
//           "_weatherTemp": "27",
//           "_weatherFeelsLike": "34",
//           "_sport": {
//               "_sportID": "1",
//               "_description": "Horse Racing"
//           },
//           "_weatherLastUpdated": 1401666605

struct TempratureData : Codable {
    
    let _venueID : String?
    let _name : String?
    let _country : String?
    let _weatherCondition : String?
    let _weatherConditionIcon : String?
    let _weatherWind : String?
    let _weatherHumidity : String?
    let _weatherTemp : String?
    let _weatherFeelsLike : String?
    let _sport : String?
    let _weatherLastUpdated : String?
    
    enum CodingKeys: String, CodingKey {
        case _venueID = "97"
        case _name = "Adelaide"
        case _country = "Australia"
        case _weatherCondition = "Partly Cloudy"
        case _weatherConditionIcon = "partlycloudy"
        case _weatherWind = "Wind: ESE at 17kph"
        case _weatherHumidity = "Humidity: 65%"
        case _weatherTemp = "27"
        case _weatherFeelsLike = "34"
        case _sport = "Horse Racing"
        case _weatherLastUpdated = "1401666605"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        _venueID = try values.decodeIfPresent(String.self, forKey: ._venueID)
        _name = try values.decodeIfPresent(String.self, forKey: ._name)
        _country = try values.decodeIfPresent(String.self, forKey: ._country)
        _weatherCondition = try values.decodeIfPresent(String.self, forKey: ._weatherCondition)
        _weatherWind = try values.decodeIfPresent(String.self, forKey: ._weatherWind)
        _weatherConditionIcon = try values.decodeIfPresent(String.self, forKey: ._weatherConditionIcon)
        _weatherHumidity = try values.decodeIfPresent(String.self, forKey: ._weatherHumidity)
        _weatherTemp = try values.decodeIfPresent(String.self, forKey: ._weatherTemp)
        _weatherFeelsLike = try values.decodeIfPresent(String.self, forKey: ._weatherFeelsLike)
        _sport = try values.decodeIfPresent(String.self, forKey: ._sport)
        _weatherLastUpdated = try values.decodeIfPresent(String.self, forKey: ._weatherLastUpdated)
    }
    
}

