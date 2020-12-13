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
    var body: some View {
        
        VStack {
            Text("メッセージの入力")
            Text("との関係性")
            TextField("関係性",text: $relation)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("メッセージ")
            TextField("メッセージ",text: $message)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                Button(action : {}){
                    Text("戻る")
                }
                Button(action : {}){
                    Text("メッセージの確認")
                
                }
            }
            Spacer()
            MenuRowView()
        }
    }
}

struct WriteMessage_Previews: PreviewProvider {
    static var previews: some View {
        WriteMessage()
    }
}
