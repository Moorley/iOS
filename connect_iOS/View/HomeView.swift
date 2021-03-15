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
        NavigationView{
            VStack{
                Text("私の友達")
                List{
                    ForEach(friends) {friend in
                        FriendListView(friends: friend)
                    }
                }
                NavigationLink(destination: AddFriend()){
                    Text("友達追加")
                }
                MenuRowView()
                Spacer()
            
            }
        }.navigationBarHidden(true)
    
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
