//
//  SelectMessageFriend.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/11/29.
//

import SwiftUI

struct SelectMessageFriend: View {
    @Environment(\.managedObjectContext) private var context
 
    /// データ取得処理
    @FetchRequest(
        entity: Friend.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Friend.name, ascending: true)],
        predicate: nil
    ) private var friends: FetchedResults<Friend>
    
    var body: some View {
        VStack{
            Text("誰に送りますか？")
            List{
                ForEach(friends) {friend in
                        FriendListView(friends: friend)
                    
                }
            }
            Button(action : {}){
                Text("送信先決定")
            
            }
            
            Spacer()
            MenuRowView()
        }
    }
}

struct SelectMessageFriend_Previews: PreviewProvider {
    static var previews: some View {
        SelectMessageFriend()
    }
}
