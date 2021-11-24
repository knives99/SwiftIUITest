//
//  ProfileView.swift
//  swiftUItest
//
//  Created by Bryan on 2021/11/22.
//

import SwiftUI

struct ProfileView: View {
    var columns:[GridItem] = [
        GridItem(.fixed(120)),
        GridItem(.fixed(120)),
        GridItem(.fixed(120))
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                ProfileHeaderView()
                LazyVGrid(columns: columns,spacing: 5) {
                    ForEach(0...90, id:\.self){
                        num in
                        let imageName = "image\(Int.random(in: 1...5))"
                        NavigationLink {
                            PostView(userImageName: "user2", imageName: imageName)
                                .navigationBarTitle("photo", displayMode: .inline)
                        } label: {
                            Image(imageName)
                                .resizable()
                                .frame(width: 120, height: 120, alignment: .center)
                                .aspectRatio(nil, contentMode: .fill)
                        }


                    }
                }
            }
            .padding()
            .navigationBarTitle("iosAcadmy", displayMode: .inline)
        }
    }
}

struct ProfileHeaderView:View{
    var body: some View{
        VStack{
            //avatar image, counts
            HStack{
                Image("user2")
                    .resizable()
                    .aspectRatio(nil, contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(50)
                    .padding()
                
                VStack{
                    HeadCountButtonsView()
                        .padding()
                    //Edit profile butoton
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .foregroundColor(Color(.label))
                            .frame(width: 220, height: 44, alignment: .center)
                            .background(Color.secondary)
                            .cornerRadius(8)
                    }

                    
                }
            }
            HStack{
                //User bio
                Text("Welcom xxxxxxxxxxxx")
                    .multilineTextAlignment(.leading)
                    .padding()
                Spacer()
            }
        }
    }
}

struct HeadCountButtonsView:View{
    var body : some View{
        HStack{
            //Posts, followers, following
            Button {
                //
            } label: {
                Text("3 \nPost")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
                
            }
            .padding(5)
            Button {
                //
            } label: {
                Text("12\nFollowers")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
                
            }
            .padding(5)
            Button {
                //
            } label: {
                Text("300\nFollowing")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .padding(5)

        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
