//
//  TitleBar.swift
//  FantastiCal
//
//  Created by Michael Craun on 9/27/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit
@IBDesignable

class TitleBar: UIView {
    
    let subtitleLabel = UILabel()

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = UIColor.white
        
    }
    
    func addSubtitle(subtitle: String) {
        
        subtitleLabel.font = UIFont(name: "Hoefler Text", size: 10)
        subtitleLabel.textColor = UIColor.lightGray
        subtitleLabel.text = subtitle
        subtitleLabel.sizeToFit()
        subtitleLabel.frame = CGRect(x: self.frame.width / 2 - subtitleLabel.frame.width / 2,
                                     y: self.frame.height / 2 + 5,
                                     width: subtitleLabel.frame.width,
                                     height: subtitleLabel.frame.height)
        
        self.addSubview(subtitleLabel)
        
    }
}
