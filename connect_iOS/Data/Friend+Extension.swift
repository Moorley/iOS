//
//  Friend+Extension.swift
//  connect_iOS
//
//  Created by 芥川力也 on 2021/03/15.
//

import Foundation
import CoreData
import SwiftUI


extension Friend{
    
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


