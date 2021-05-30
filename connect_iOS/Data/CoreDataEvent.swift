//
//  CoreDataEvent.swift
//  connect_iOS
//
//  Created by 芥川力也 on 2021/02/24.
//
import CoreData
import Foundation

extension Event {
    static func create(in managedObjectContext: NSManagedObjectContext){
        let newEvent = self.init(context: managedObjectContext)
        newEvent.timestamp = Data()
        
        do{
            try managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror),\(nserror.userInfo)")
        }
    }
}

extension Collection where Element == Event, Index == Int{
    func delete(at indices:IndexSet, from managedObjectContext: NSManagedObjectContext){
        indices.forEach{
            managedObjectContext.delete(self[$0])
        }
    }
}
