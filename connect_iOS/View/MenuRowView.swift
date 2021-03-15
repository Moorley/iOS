//
//  MenuRowView.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/11/29.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        HStack(alignment: .center) {
            NavigationLink(
                destination: HomeView()){
                    Text("私の友達")
            }
            NavigationLink(
                destination: SelectMessageFriend()){
                Text("代理メッセージ送信")
            }
                Text("受信メッセージ")
                Text("私の設定")
        }.previewLayout(.fixed(width:400,height:100))
        
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}
