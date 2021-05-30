//
//  WriteMessage.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/11/29.
//

import SwiftUI

struct WriteMessage: View {
    @State var relation : String = ""
    @State var message : String = ""

    @Binding var friend : Friend
    var body: some View {
        NavigationView{
            
            VStack {
                Text("メッセージの入力")
                Text("\(friend.name ?? "no title")との関係性")
                TextField("関係性",text: $relation)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("メッセージ")
                TextField("メッセージ",text: $message)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                HStack {
                    NavigationLink(destination: CheckMessage(relation: $relation, message: $message, friend: $friend)){
                        Text("メッセージの確認")
                    }
                    Button(action : {}){
                        Text("戻る")
                    
                    }
                }
            }
        }.navigationBarHidden(true)

    }
}


