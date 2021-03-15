//
//  SelectMsgFriend.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/11/29.
//

import SwiftUI

struct SelectMsgFriend: View {
    @Environment(\.managedObjectContext) private var context
    
    /// データ取得処理
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \MsgFriend.name, ascending: true)],
        predicate: nil
    )
    private var msgFriends: FetchedResults<MsgFriend>
    @State var selections = Set<MsgFriend>()
    
    
    var friend: Friend
    var body: some View {
        VStack{
            Text("\(friend.name ?? "no title")の友達です。誰にメッセージを送信しますか？")
            Button(action: {
                selections.removeAll()
            }){
                Text("選択解除")
            }
            Button(action: {
                selections.removeAll()
                for msgFriend in msgFriends{
                    selections.update(with: msgFriend)
                }
                
            }){
                Text("全選択")
            }
            List(selection: $selections){
                ForEach(msgFriends, id: \.self) {msgFriend in
                    MsgFriendListView(msgFriends: msgFriend)
                }
            }
            .environment(\.editMode, .constant(.active))
            
            HStack {
                Button(action : {}){
                    Text("戻る")
                }
                Button(action : {}){
                    Text("メッセージの入力")
                
                }
            }
            
            Spacer()
            MenuRowView()
        }
    }
}


