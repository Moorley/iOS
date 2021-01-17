//
//  AddFriend.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/12/06.
//

import SwiftUI

struct AddFriend: View {
    @State var name : String = ""
    @State private var isShowSelect = false
    var body: some View {
        VStack{
            Text("名前を入力してください。")
            TextField("名前",text: $name)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action:{
                self.isShowSelect = true
                
            }){
                Text("add")
            }
            .alert(isPresented: $isShowSelect) {
                        Alert(title: Text("確認"),
                              message: Text("\(name)を追加します。"),
                              primaryButton: .default(Text("いいえ")),
                              secondaryButton: .default(Text("はい")) {
                                // 「はい」を選択した場合の処理
                              })
            }
        }
    }
    
}

struct AddFriend_Previews: PreviewProvider {
    static var previews: some View {
        AddFriend()
    }
}
