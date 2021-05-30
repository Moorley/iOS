//
//  Chat+CoreDataProperties.swift
//  connect_iOS
//
//  Created by 芥川力也 on 2021/05/30.
//
//

import Foundation
import CoreData


extension Chat {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Chat> {
        return NSFetchRequest<Chat>(entityName: "Chat")
    }

    @NSManaged public var from: String?
    @NSManaged public var id: String?
    @NSManaged public var message: String?
    @NSManaged public var relationShip: String?
    @NSManaged public var to: String?
    @NSManaged public var msgFriend: Chat?
    @NSManaged public var relationship: Chat?

}

extension Chat : Identifiable {
    static func create(in managedObjectContext: NSManagedObjectContext,
                       to:String,
                       from:String,
                       message:String,
                       relationship:String){
        let chat = self.init(context: managedObjectContext)
        chat.to = to
        chat.message = message
        chat.from = from
        chat.relationShip = relationship
        chat.id = UUID().uuidString
        
        do {
            try  managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}
