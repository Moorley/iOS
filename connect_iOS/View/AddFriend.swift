//
//  AddFriend.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/12/06.
//

import SwiftUI

struct AddFriend: View {
    @State var name : String = ""
    var body: some View {
        VStack{
            Text("名前を入力してください。")
            TextField("名前",text: $name)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action:{
                
            }){
                Text("add")
            }
        }
    }
    
}

struct AddFriend_Previews: PreviewProvider {
    static var previews: some View {
        AddFriend()
    }
}
