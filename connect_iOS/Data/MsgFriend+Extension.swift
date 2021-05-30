//
//  MsgFriend+Extension.swift
//  connect_iOS
//
//  Created by 芥川力也 on 2021/03/16.
//

import Foundation
import CoreData
import SwiftUI

extension MsgFriend {
    
    static func create(in managedObjectContext: NSManagedObjectContext,
                       name:String){
        let friend = self.init(context: managedObjectContext)
        friend.name = name
        friend.id = UUID().uuidString
        friend.sendUser = false
        
        do {
            try  managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
    static func changeSend(in managedObjectContext: NSManagedObjectContext,msgFriends: [MsgFriend]){
        
        for msgFriend in msgFriends{
            let fetchRequest = NSFetchRequest<MsgFriend>(entityName: "MsgFriend")

            fetchRequest.predicate = NSPredicate(format: "name = %@","name","msgFriend.name")
            
            let prMsgFriends = try? managedObjectContext.fetch(fetchRequest)
            if((prMsgFriends?.isEmpty) != nil){
                for i in 0..<prMsgFriends!.count{
                    prMsgFriends?[i].sendUser = true
                    
                    do {
                        try  managedObjectContext.save()
                    } catch {
                        let nserror = error as NSError
                        fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
                    }
                }
            }
            
        }
    }
}
