//
//  CalendarView.swift
//  FantastiCal
//
//  Created by Michael Craun on 10/5/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit
@IBDesignable

class CalendarView: UIView {
    
    let prevMonthButton = UIButton()
    let nextMonthButton = UIButton()
    let monthLabel = UILabel()
    var month: String?

    override func layoutSubviews() {
        super.layoutSubviews()
        
        layoutButtons()
        layoutMonthLabel(month: month!)
        
    }
    
    func layoutButtons() {
        
        prevMonthButton.backgroundColor = UIColor.orange
        prevMonthButton.frame = CGRect(x: 10,
                                       y: 10,
                                       width: 30,
                                       height: 30)
        
        nextMonthButton.backgroundColor = UIColor.orange
        nextMonthButton.frame = CGRect(x: self.frame.width - 40,
                                       y: 10,
                                       width: 30,
                                       height: 30)
        
        self.addSubview(prevMonthButton)
        self.addSubview(nextMonthButton)
        
    }
    
    func layoutMonthLabel(month: String) {
        
        monthLabel.font = UIFont(name: "Hoefler Text", size: 15)
        monthLabel.text = month
        monthLabel.sizeToFit()
        monthLabel.frame = CGRect(x: self.frame.width / 2 - monthLabel.frame.width / 2,
                                  y: 20,
                                  width: monthLabel.frame.width,
                                  height: monthLabel.frame.height)
        
        self.addSubview(monthLabel)
        
    }
}
