//
//  HomeView.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/11/29.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.managedObjectContext) private var context
 
    /// データ取得処理
    @FetchRequest(
        entity: Friend.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Friend.name, ascending: true)],
        predicate: nil
    ) private var friends: FetchedResults<Friend>
    
    var body: some View {

        VStack{
            Text("私の友達")
            List{
                ForEach(friends) {friend in
                    FriendListView(friends: friend)
                }
            }
            NavigationView{
                NavigationLink("友達追加",
                destination: AddFriend())
            }
            Spacer()
            MenuRowView()
        }
    
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
