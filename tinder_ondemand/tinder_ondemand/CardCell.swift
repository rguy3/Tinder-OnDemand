//
//  CardVC.swift
//  tinder_ondemand
//
//  Created by Blu on 1/25/17.
//  Copyright © 2017 Blu. All rights reserved.
//

import UIKit

class CardCell: UICollectionViewCell {
    
    
    @IBOutlet weak var ProfilePic: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var friendsLbl: UILabel!
    @IBOutlet weak var bookLbl: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 10.0
        layer.shadowColor = SHADOW.cgColor
        layer.shadowOffset = CGSize(width: 2, height: 2)
        layer.shadowRadius = 2.0
        layer.shadowOpacity = 0.4
        
        let path = UIBezierPath(roundedRect:ProfilePic.layer.bounds,
                                byRoundingCorners:[.topRight, .topLeft],cornerRadii: CGSize(width: 10, height:  10)) //creates corner radius for specific corner of a square
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        
        ProfilePic.layer.mask = maskLayer
        
        ProfilePic.clipsToBounds = true //Keeps image clipped within cell
        layer.masksToBounds = false //keeps shadow out of bounds
    }
    
}
