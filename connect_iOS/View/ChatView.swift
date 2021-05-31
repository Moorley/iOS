//
//  ChatView.swift
//  connect_iOS
//
//  Created by 芥川力也 on 2021/05/31.
//

import SwiftUI

struct ChatView: View {
    @Environment(\.managedObjectContext) private var context
 
    /// データ取得処理
    @FetchRequest(
        entity: Chat.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Chat.to, ascending: true)],
        predicate: nil
    ) private var chats: FetchedResults<Chat>
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Chat一覧")
                List{
                    ForEach(chats) {chat in
                        ChatListView(chat: chat)
                    }
                }
                
                MenuRowView()
                Spacer()
            
            }
        }
    
    }

}


