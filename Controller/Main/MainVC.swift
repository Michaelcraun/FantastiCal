//
//  ViewController.swift
//  FantastiCal
//
//  Created by Michael Craun on 9/27/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit
import CoreData

class MainVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, NSFetchedResultsControllerDelegate {

    var titleBar = TitleBar()
    
    var calendarView = CalendarView()
    var weekCollection: UICollectionView!
    var monthCollection: UICollectionView!
    
    var eventTable = UITableView()
    
    //MARK: Layout Variables
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    //MARK: CoreData Variables
    var dayController: NSFetchedResultsController<Day>!
//    var eventController: NSFetchedResultsController<Event>!
//    var monthController: NSFetchedResultsController<Month>!
//    var yearController: NSFetchedResultsController<Year>!
    
    var days = [Day]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutView()
        initialSetup()
        
        //MARK: Test Calls
        generateTestData()
        
        attemptDayFetch()
        
    }
    
    func initialSetup() {
    
        calendarView.month = "January"
        
    }
    
    //MARK: CollectionView setup
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
//        if collectionView == weekCollection {
        
            if let objects = dayController.fetchedObjects, objects.count > 0 {
                
                return objects.count
                
            } else {
                
                return 0
                
            }
//        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//        if collectionView == weekCollection {
        
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "weekCell", for: indexPath) as! WeekCollectionCell
        
            if let objects = dayController.fetchedObjects, objects.count > 0 {
            
                days = objects
            
            }
                
            cell.configureCell(dayName: days[indexPath.row].name!)
            return cell
        
//        }
    }
    
    func generateTestData() {
        
//        let month1 = Month()
//        month1.length = 31
//        month1.name = "January"
//        month1.beginningDay = "Sunday"
//
//        let month2 = Month()
//        month2.length = 28
//        month2.name = "February"
//        month2.beginningDay = "Wednesday"
//
//        let month3 = Month()
//        month3.length = 31
//        month3.name = "March"
//
//        let month4 = Month()
//        month4.length = 30
//        month4.name = "April"
//
//        let month5 = Month()
//        month5.length = 31
//        month5.name = "May"
//
//        let month6 = Month()
//        month6.length = 30
//        month6.name = "June"
//
//        let month7 = Month()
//        month7.length = 31
//        month7.name = "July"
//
//        let month8 = Month()
//        month8.length = 31
//        month8.name = "August"
//
//        let month9 = Month()
//        month9.length = 30
//        month9.name = "September"
//
//        let month10 = Month()
//        month10.length = 31
//        month10.name = "October"
//
//        let month11 = Month()
//        month11.length = 30
//        month11.name = "November"
//
//        let month12 = Month()
//        month12.length = 31
//        month12.name = "December"
        
        let day1 = Day(context: context)
        day1.name = "Sunday"
        
        let day2 = Day(context: context)
        day2.name = "Monday"
        
        let day3 = Day(context: context)
        day3.name = "Tuesday"
        
        let day4 = Day(context: context)
        day4.name = "Wednesday"
        
        let day5 = Day(context: context)
        day5.name = "Thursday"
        
        let day6 = Day(context: context)
        day6.name = "Friday"
        
        let day7 = Day(context: context)
        day7.name = "Saturday"
        
//        let year = Year()
//        year.daysPerWeek = 7
        
    }
}
