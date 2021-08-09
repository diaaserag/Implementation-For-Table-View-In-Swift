//
//  productsData.swift
//  table view implementation
//
//  Created by diaa on 08/08/2021.
//

import Foundation
import UIKit
class data {
    let imagP :  UIImage
    let nameP : String
    let buyerN : String
    let priceP : Float
    var isComplete: Bool = false
    var count : Int = 0
    
    init(imag : UIImage , name : String ,buyer : String , price : Float) {
        self.imagP = imag
        self.nameP = name
        self.buyerN = buyer
        self.priceP = price
    }
}
