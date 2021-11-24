//
//  ExploreView.swift
//  swiftUItest
//
//  Created by Bryan on 2021/11/22.
//

import SwiftUI

struct ExploreView: View {

    @State var text = ""
    var imageNames = (1...5).map({"image\($0)"})
    var columns:[GridItem] = [
        GridItem(.flexible(minimum: 200)),
        GridItem(.flexible(minimum: 200))
    ]
    var body: some View {
        NavigationView{
            VStack{
                TextField("Search......", text: $text)
                    .padding(10)
                    .background(Color.secondary)
                    .cornerRadius(12)
                    .padding()
                ScrollView{
                    LazyVGrid(columns:columns ) {
                        ForEach(0...20,id:\.self){num in
                            let name = imageNames.randomElement() ?? "image1"
                            NavigationLink {
                                PostView(userImageName: "user1", imageName: name)
                            } label: {
                                Image(name)
                                    .resizable()
                                    .frame(width: 200, height: 200, alignment: .center)
                                    .aspectRatio(nil, contentMode: .fill)
                                    .foregroundColor(Color.red)
                            }

                        }
                    }
                }
           
            }

            .navigationTitle("Explore")
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
            .previewDevice("iPhone 13 Pro Max")
            .preferredColorScheme(.dark)
    }
}
