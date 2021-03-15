//
//  connect_iOSApp.swift
//  connect_iOS
//
//  Created by 芥川力也 on 2020/12/13.
//

import SwiftUI

@main
struct connect_iOSApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
