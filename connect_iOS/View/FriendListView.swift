//
//  FriendListView.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/11/29.
//

import SwiftUI

struct FriendListView: View {
    var friends : FriendEntity
    var body: some View {
        HStack(alignment: .center) {
            Text(friends.id)
            Text(friends.name)
                    
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


struct FriendListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendListView(friends: friendStore.friends[1])
    }
}
