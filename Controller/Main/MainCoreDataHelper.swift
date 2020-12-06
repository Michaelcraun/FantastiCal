//
//  MainCoreDataHelper.swift
//  FantastiCal
//
//  Created by Michael Craun on 9/28/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation
import CoreData

extension MainVC {
    
    func attemptDayFetch() {
        
        let dayFetchRequest: NSFetchRequest<Day> = Day.fetchRequest()
        let nameSort = NSSortDescriptor(key: "name", ascending: false)
        dayFetchRequest.sortDescriptors = [nameSort]
        
        let controller = NSFetchedResultsController(fetchRequest: dayFetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        controller.delegate = self
        self.dayController = controller
        
        do {
            
            try controller.performFetch()
            
        } catch {
            
            let error = error as NSError
            print("\(error)")
            
        }
    }
}
