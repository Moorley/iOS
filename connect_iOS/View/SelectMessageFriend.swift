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
        NavigationView{
            VStack{
                Text("誰のメッセージを送りますか？")
                List{
                    ForEach(friends) {friend in
                        NavigationLink(
                            destination: SelectMsgFriend(friend: friend),
                            label: {
                                FriendListView(friends: friend)
                            })
                    }
                }
                Button(action : {}){
                    Text("送信先決定")
                
                }
                MenuRowView()
                Spacer()
            
            }
        }.navigationBarHidden(true)

    }
}

struct SelectMessageFriend_Previews: PreviewProvider {
    static var previews: some View {
        SelectMessageFriend()
    }
}
