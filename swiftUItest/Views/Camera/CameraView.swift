//
//  CameraView.swift
//  swiftUItest
//
//  Created by Bryan on 2021/11/22.
//

import SwiftUI

struct CameraView: View {
    
    @State var isShowingPicker = false
    @State var isUsingCamera = false
    @State var image :Image? = nil
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    image?
                        .resizable()
                        .aspectRatio(nil, contentMode: .fit)
                        .frame(width: 300 , height: 300, alignment: .center)
                    Button {
                        self.isUsingCamera = true
                        self.isShowingPicker.toggle()
                    } label: {
                        Text("Photolibrary")
                    }
                    .padding()
                    Button {
                        self.isUsingCamera = false
                        self.isShowingPicker.toggle()
                    } label: {
                        Text("Take a phot")
                    }
                    .padding()
                }
                if (isShowingPicker){
                    CaptueView(isShown:$isShowingPicker,image:$image,isUsingCamera:$isUsingCamera)
                }
            }
            .navigationTitle("Camera")
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
            .preferredColorScheme(.dark)
    }
}
