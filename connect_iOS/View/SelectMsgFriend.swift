//
//  SelectMsgFriend.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/11/29.
//

import SwiftUI

struct SelectMsgFriend: View {
    var body: some View {
        VStack{
            Text("の友達です。誰にメッセージを送信しますか？")
            List{

            }
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

struct SelectMsgFriend_Previews: PreviewProvider {
    static var previews: some View {
        SelectMsgFriend()
    }
}
