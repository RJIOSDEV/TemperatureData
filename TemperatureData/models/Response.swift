//
//  Response.swift
//  BAPS
//
//  Created by mac on 01/07/20.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

class Response: Decodable {
    
  //  var errorType: Int?
    var status: String?
    var message: String?
 //   var success: String?
 //   var checkin_time: String?
  //  var punchesList: [[String]]?
    
    enum ResponseCodingKeys: String, CodingKey {
        case errorType = "error_type"
        case status = "status"
        case message = "message"
        case success = "success"
        case checkin_time = "checkin_time"
        case punchesList = "response"
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: ResponseCodingKeys.self)
        
        do {

            if let errorType = try container.decodeIfPresent(String.self, forKey: .errorType) {
             //   self.errorType = Int(errorType)
            }
          
            status = try container.decodeIfPresent(String.self, forKey: .status)
        //    success = try container.decodeIfPresent(String.self, forKey: .success)
            message = try container.decodeIfPresent(String.self, forKey: .message)
         //
        //    punchesList = try container.decodeIfPresent([[String]].self, forKey: .punchesList)
            
            
        } catch {
            print(error)
        }
    }
    
}

class ResponseWithData<DataType>: Response where DataType: Decodable {
    
    var data: DataType?
    
    enum ResponseWithDataCodingKeys: String, CodingKey {
        case data = "data"
    }
    
    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: ResponseWithDataCodingKeys.self)
        
        do {
            data = try container.decodeIfPresent(DataType.self, forKey: .data)
        } catch {
            print(error)
        }
    }

}
class ResponseArrayWithData<DataType>: Response where DataType: Decodable {
    
    var data: [DataType]?
    
    enum ResponseWithDataCodingKeys: String, CodingKey {
        case data = "data"
    }
    
    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: ResponseWithDataCodingKeys.self)
        
        do {
            data = try container.decodeIfPresent([DataType].self, forKey: .data)
        } catch {
            print(error)
        }
    }

}
