//
//  Notification.swift
//  swiftUItest
//
//  Created by Bryan on 2021/11/22.
//

import SwiftUI

struct Notification: View {
    var body: some View {
        NavigationView{
            VStack{
                List(0...30,id:\.self){num in
                    if num % 2 == 0{
                        NotificationFollowView()
                    }else{
                        NotificationLikeView()
                    }
                    
                    
                }
            }
            .navigationTitle("Notifications")
        }
    }
}

struct NotificationLikeView:View{
    var body:some View{
        HStack{
            //user image
            let userImageName = "user\(Int.random(in: 1...5))"
            let randomNumber = Int.random(in: 1...5)
            Image(userImageName)
                .resizable()
                .aspectRatio(nil, contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            //text , date
            VStack(alignment: .leading){
                Text("AMilt Likeed your post")
                Text("12minustes ago")
                    .foregroundColor(Color.secondary)
            }
            Spacer()
            //POSt
            let imageName = "image\(Int.random(in: 1...5))"
            let image = Image("image\(randomNumber)")
                .resizable()
                .aspectRatio(nil, contentMode: .fill)
                .frame(width: 44, height: 44, alignment: .center)
            NavigationLink(destination: PostView(userImageName: userImageName, imageName: imageName)) {
                Spacer()
                image
            }
            .frame(width: 44, height: 44, alignment: .center)
        }
        
    }
}


struct NotificationFollowView:View{
    var body:some View{
        HStack{
            //user image
            let randomNumber = Int.random(in: 1...5)
            Image("user\(randomNumber)")
                .resizable()
                .aspectRatio(nil, contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            //text , date
            VStack(alignment: .leading){
                Text("Johnspppaa ha following you")
                Text("12minustes ago")
                    .foregroundColor(Color.secondary)
            }
            Spacer()
            //foolow button
            Button {
                // do nothing
            } label: {
                Text("follow")
                    .frame(width: 80, height: 30, alignment: .center)
                    .foregroundColor(Color.white)
                    .background(Color(.link))
                    .cornerRadius(8)
                
            }

        }
    }
}

struct Notification_Previews: PreviewProvider {
    static var previews: some View {
        Notification()
    }
}
