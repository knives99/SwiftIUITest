//
//  ContentView.swift
//  swiftUItest
//
//  Created by Bryan on 2021/11/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView{
            HomeFeedView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            ExploreView()
                .tabItem{
                    Image(systemName: "safari")
                    Text("Explore")
                    
                }
            CameraView()
                .tabItem{
                    Image(systemName: "camera")
                    Text("Camera")
                }
            Notification()
                .tabItem{
                    Image(systemName: "bell")
                    Text("Notifaction")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person.circle")
                    Text("profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .environment(\.sizeCategory, .medium)
            .previewDevice("iPhone 12 Pro Max")
    }
}
