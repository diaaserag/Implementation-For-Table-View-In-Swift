//
//  TableViewCell.swift
//  table view implementation
//
//  Created by diaa on 08/08/2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    //important for button love handelling
    typealias DoneButtonAction = () -> Void

    var doneButtonAction: DoneButtonAction?
    
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
   // important for decrees and increes
    typealias forinc = () -> Void
    typealias fordecr = () -> Void
    
    var donedecres : fordecr?
    var doneincres : forinc?
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
    @IBOutlet weak var love: UIButton!
    @IBOutlet weak var imagProduct: UIImageView!
    
    @IBOutlet weak var lablProductName: UILabel!
    
    @IBOutlet weak var lablBuyer: UILabel!
    @IBOutlet weak var lablCount: UILabel!
    
    @IBOutlet weak var lablPrice: UILabel!
    
     var counter = 0
    @IBAction func buttonCount(_ sender: UIButton) {
        if sender.tag == 1{
            counter += 1
            doneincres?()
        }
        else if counter > 0 && sender.tag == 2{
            counter -= 1
            donedecres?()
        }
        
    }
    
    
    
    

    @IBAction func buttonLove(_ sender: UIButton) {
        doneButtonAction?()
        }
    
    
    
}
