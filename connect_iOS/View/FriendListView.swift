//
//  FriendListView.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/11/29.
//

import SwiftUI

struct FriendListView: View {
    var friends : Friend
    var body: some View {
        HStack(alignment: .center) {
            Text(friends.name ?? "no title")
                    
        }.previewLayout(.fixed(width:400,height:100))
            
        
    }
}

struct MsgFriendListView: View {
    var msgFriends : FriendEntity
    var body: some View {
        HStack(alignment: .center) {
            Text(msgFriends.id)
            Text(msgFriends.name)
                
        }.previewLayout(.fixed(width:400,height:100))
    }
}



