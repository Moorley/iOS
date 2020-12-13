//
//  CehckMessage.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/12/06.
//

import SwiftUI

struct CehckMessage: View {
    var name:String = "name"
    var body: some View {
        VStack {
            Text("メッセージの確認")
            Text("relation")
            Text("message")
            HStack {
                Button(action : {}){
                    Text("戻る")
                }
                Button(action : {}){
                    Text("メッセージの送信")
                
                }
            }
            Spacer()
            MenuRowView()
        }
    }
}

struct CehckMessage_Previews: PreviewProvider {
    static var previews: some View {
        CehckMessage()
    }
}
