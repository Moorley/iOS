//
//  CehckMessage.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/12/06.
//

import SwiftUI

struct CheckMessage: View {
    @Binding var relation : String
    @Binding var message : String
    @Binding var friend : Friend
    @Environment(\.managedObjectContext) private var context
    
    @FetchRequest(
        entity: MsgFriend.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \MsgFriend.name, ascending: true)],
        predicate: NSPredicate(format:"sendUser == true"),
        animation: .default
    ) private var msgFriends: FetchedResults<MsgFriend>

    
    var body: some View {
        VStack {
            Text("メッセージの確認")
            Text("\(relation)")
            Text("\(message)")
            List{
                ForEach(msgFriends, id: \.self) {msgFriend in
                    MsgFriendListView(msgFriends: msgFriend)
                }
            }

        }
            HStack {
                Button(action : {}){
                    Text("戻る")
                }
                Button(action : {
                        addChat()
                    

                }){
                    Text("メッセージの送信")
                
                }
            }

    }
    
    private func addChat() {
        for msgFriend in msgFriends{
            withAnimation {
                Chat.create(in: context, to: msgFriend, from: "me", message: message, relationship: relation)

                    do {
                        try context.save()
                    } catch {
                        // Replace this implementation with code to handle the error appropriately.
                        // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                        let nsError = error as NSError
                        fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
                    }
            }
        }
    }

}
    



