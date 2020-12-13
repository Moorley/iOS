//
//  HomeView.swift
//  TestEMG
//
//  Created by 芥川力也 on 2020/11/29.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView{
        VStack{
            Text("私の友達")
            List{
                ForEach(friendStore.friends) {friend in
                    FriendListView(friends: friend)
                }
            }
            NavigationLink(
                destination: AddFriend()){
                Text("友達追加")
            }
            
            
            Spacer()
            MenuRowView()
        }
    }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(
        )
    }
}
