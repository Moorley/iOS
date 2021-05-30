//
//  Friend+CoreDataProperties.swift
//  connect_iOS
//
//  Created by 芥川力也 on 2021/05/30.
//
//

import Foundation
import CoreData


extension Friend {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Friend> {
        return NSFetchRequest<Friend>(entityName: "Friend")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?

}

extension Friend : Identifiable {
    static func create(in managedObjectContext: NSManagedObjectContext,
                       name:String){
        let friend = self.init(context: managedObjectContext)
        friend.name = name
        friend.id = UUID().uuidString
        
        do {
            try  managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}
