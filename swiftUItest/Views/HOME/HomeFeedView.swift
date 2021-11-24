//
//  SwiftUIView.swift
//  swiftUItest
//
//  Created by Bryan on 2021/11/22.
//

import SwiftUI

struct HomeFeedView: View {
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    StoriesView()
                    ForEach(1...5,id:\.self){num in
                        PostView(userImageName: "user\(num)", imageName: "image\(num)")
                            .padding(.bottom, 20)
                            
                    }
                        
                }
            }
            .navigationTitle("Instagram")
        }
    }
}

struct PostView:View{
    let userImageName:String
    let imageName:String
    var body: some View{
        VStack{
            PostHeaderView(userImageName:userImageName)
            .padding()
            //Image
            Image(imageName)
                .resizable()
                .aspectRatio(nil, contentMode: .fill)
                .frame(width: 400, height: 400, alignment: .center)
                .background(Color.secondary)
            PostActionButtonsView()
            
            HStack{
                //like count
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(nil, contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color.red)
                Text("32 likes")
                    .font(.system(size: 20))
                    .foregroundColor(Color(.link))
                Spacer()
                
            }
            .padding(.leading, 10)
            .padding(.top,-10)
            
            //caption
            Text("oh man ifkfkl olkdfmmmmmmmmmmldlllfkff..,,,v,v,v,v")
                .font(.headline)
                .padding(.top, -10)
            
            //Comments
            
            HStack{
                //date
                Text("1 houre ago")
                    .foregroundColor(Color.secondary)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.leading,10)
            
        }
    }
    
}

struct PostHeaderView :View{
    var userImageName:String
    var body:some View{
        HStack{
            //usser profile picture and username
            Image(userImageName)
                .resizable()
                .aspectRatio(nil, contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            Text("Kanter")
                .foregroundColor(Color.blue)
                .bold()
            Spacer()
        }
    }
}

struct PostActionButtonsView:View{
    
    var body: some View{
        HStack{
            //avtion buttoms like comment share
            Button {
                //like
            } label: {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(nil, contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            }
            .padding(.trailing,10)

            Button {
                //like
            } label: {
                Image(systemName: "message")
                    .resizable()
                    .aspectRatio(nil, contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
                    
            }
            .padding(.trailing, 10)
            Button {
                //like
            } label: {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .aspectRatio(nil, contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            }
            .padding(.trailing, 10)
            Spacer()

        }
        .padding()
    }
}


struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
            .previewDevice("iPhone 12 Pro")
    }
}
