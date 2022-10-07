//
//  ProtocolCar.swift
//  ee
//
//  Created by Apps2T on 4/10/22.
//

import Foundation

protocol ProtocolCar{
    
    var imgUrl : String {get set}
    var carName : String {get set}
    var carPrice : String {get set}
    
    
    func getImgUrl() -> String
    func getCarName() -> String
    func getCarPrice() -> String
    
//    func setImgCell(imgCell : String)
//    func setCarName(carName : String)
//    func setCarPrice(carPrice : String)
    
    
    
}
