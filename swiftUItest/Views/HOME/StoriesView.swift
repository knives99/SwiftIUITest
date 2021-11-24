//
//  StoriesView.swift
//  swiftUItest
//
//  Created by Bryan on 2021/11/22.
//

import SwiftUI


struct StoriesView:View{
    let data = (1...5).map({"user\($0)"})
    var body: some View{
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(data,id:\.self){imageName in
                    storyView(imageName: imageName)
                }

            }
        }
    }
}
struct storyView:View{
    let imageName : String
    
    var body:some View{
        
        Image(imageName)
            .resizable()
            .aspectRatio(nil, contentMode: .fill)
            .frame(width: 90 , height: 90, alignment: .center)
            .background(Color.blue)
            .cornerRadius(45)
            .padding(3)
            
    }
    
}


struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}

