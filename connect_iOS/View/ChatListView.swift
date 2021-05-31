//
//  MssageListView.swift
//  connect_iOS
//
//  Created by 芥川力也 on 2021/05/31.
//

import SwiftUI

struct ChatListView: View {
    var chat : Chat
    var body: some View {
        HStack(alignment: .center) {
            Text("to: \(chat.to ?? "to")")
            Text("message: \(chat.message ?? "message")")
                    
        }.previewLayout(.fixed(width:400,height:100))
    }
}


