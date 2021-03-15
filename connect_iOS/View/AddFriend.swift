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
    @State var flag : Bool = true
    
    
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        VStack{
            Text("名前を入力してください。")
            TextField("名前",text: $name)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action:{
                if(flag){
                    addFriend(addName : name)
                    self.isShowSelect = true
                }else{
                    addMsgFriend(addName : name)
                    self.isShowSelect = true
                }
                
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
            Toggle(isOn: $flag){
                Text("追加先の変更")
            }
        }
    }
    private func addFriend(addName :String) {
        withAnimation {
            let newFriend = Friend(context: viewContext)
            newFriend.name = addName

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    private func addMsgFriend(addName :String) {
        withAnimation {
            let newFriend = MsgFriend(context: viewContext)
            newFriend.name = addName

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    
}

struct AddFriend_Previews: PreviewProvider {
    static var previews: some View {
        AddFriend()
    }
}
