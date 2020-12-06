//
//  WeekCollectionCell.swift
//  FantastiCal
//
//  Created by Michael Craun on 9/27/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit

class WeekCollectionCell: UICollectionViewCell {
    
    var dayNameLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
    
    func configureCell(dayName: String) {
        
        dayNameLabel.font = UIFont(name: "Hoefler Text", size: 10)
        dayNameLabel.textAlignment = .center
        dayNameLabel.text = dayName
        dayNameLabel.sizeToFit()
        dayNameLabel.frame = CGRect(x: 1,
                                    y: 1,
                                    width: self.frame.width - 2,
                                    height: self.frame.height - 2)
        
    }
}
