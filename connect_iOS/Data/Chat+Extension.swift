//
//  Chat+Extension.swift
//  connect_iOS
//
//  Created by 芥川力也 on 2021/03/21.
//

import Foundation
import CoreData
import SwiftUI

extension Chat{
    
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
