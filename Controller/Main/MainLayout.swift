//
//  MainLayout.swift
//  FantastiCal
//
//  Created by Michael Craun on 9/27/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit

extension MainVC {
    
    func layoutView() {
        
        layoutTitleBar()
        layoutCalendarView()
        
    }
    
    func layoutTitleBar() {
        
        let divider = UIView()
        let titleLabel = UILabel()
        let settingsButton = UIButton()
        let addEventButton = UIButton()
        
        titleBar.frame = CGRect(x: 0,
                                y: 20,
                                width: screenWidth,
                                height: 50)
        titleBar.addSubtitle(subtitle: "TEST")
        
        divider.backgroundColor = UIColor.black
        divider.frame = CGRect(x: 0,
                               y: titleBar.frame.height,
                               width: titleBar.frame.width,
                               height: 1)
        
        titleLabel.font = UIFont(name: "Hoefler Text", size: 20)
        titleLabel.text = "FANTASTICAL"
        titleLabel.sizeToFit()
        titleLabel.frame = CGRect(x: titleBar.frame.width / 2 - titleLabel.frame.width / 2,
                                  y: titleBar.frame.height / 2 - 15,
                                  width: titleLabel.frame.width,
                                  height: titleLabel.frame.height)
        
        settingsButton.backgroundColor = UIColor.orange
        settingsButton.frame = CGRect(x: 10,
                                      y: 5,
                                      width: 40,
                                      height: 40)
        
        addEventButton.backgroundColor = UIColor.orange
        addEventButton.frame = CGRect(x: titleBar.frame.width - 50,
                                      y: 5,
                                      width: 40,
                                      height: 40)
        
        view.addSubview(titleBar)
        titleBar.addSubview(divider)
        titleBar.addSubview(titleLabel)
        titleBar.addSubview(settingsButton)
        titleBar.addSubview(addEventButton)
        
    }
    
    func layoutCalendarView() {
        
        let divider = UIView()
        let monthCollectionLayout = MonthCollectionLayout()
//        let monthCollectionFrame = CGRect(x: <#T##CGFloat#>,
//                                          y: <#T##CGFloat#>,
//                                          width: <#T##CGFloat#>,
//                                          height: <#T##CGFloat#>)
        
        calendarView.frame = CGRect(x: 0,
                                    y: titleBar.frame.maxY,
                                    width: screenWidth,
                                    height: 200)
        
        //MARK: Layout for weekCollection
        let weekCollectionLayout = WeekCollectionLayout()
        let weekCollectionFrame = CGRect(x: calendarView.frame.width / 2,
                                         y: calendarView.prevMonthButton.frame.maxY + 5,
                                         width: screenWidth - 30,
                                         height: 15)
        
        weekCollection = UICollectionView(frame: weekCollectionFrame, collectionViewLayout: weekCollectionLayout)
        weekCollection.dataSource = self
        weekCollection.delegate = self
        weekCollection.register(WeekCollectionCell.self, forCellWithReuseIdentifier: "weekCell")
        weekCollection.backgroundColor = UIColor.orange
        
        divider.backgroundColor = UIColor.black
        divider.frame = CGRect(x: 0,
                               y: calendarView.frame.maxY,
                               width: screenWidth,
                               height: 1)
        
        view.addSubview(calendarView)
        calendarView.addSubview(divider)
        calendarView.addSubview(weekCollection)
        //TODO: Add targets to calendarViewButtons
        
    }
    
    func layoutEventTable() {
        
//        eventTable.dataSource = self
//        eventTable.delegate = self
//        eventTable.register(EventTableCell.self, forCellReuseIdentifier: "eventCell")
        eventTable.separatorInset.left = 0
        eventTable.separatorInset.right = 0
        eventTable.frame = CGRect(x: 0,
                                  y: calendarView.frame.maxY,
                                  width: screenWidth,
                                  height: screenHeight - titleBar.frame.height - calendarView.frame.height - 20)
        
        view.addSubview(eventTable)
        
    }
}
