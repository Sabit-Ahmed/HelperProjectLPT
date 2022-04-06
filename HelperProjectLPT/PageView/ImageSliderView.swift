//
//  ImageSlider.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 6/4/22.
//

import SwiftUI

struct ImageSliderView: View {
// 1
    private let images = ["1", "2", "3", "4"]
    var deviceWidth = UIScreen.main.bounds.width
    @EnvironmentObject var apiData: GetApiData
    
    var body: some View {
        // 2
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(width: deviceWidth - 20, height: 250, alignment: .center)
            
            VStack {
                TabView {
                    ForEach(images, id: \.self) { item in
                         //3
                         Image(item)
                            .resizable()
                            .scaledToFill()
                            
                    }
                }
                .tabViewStyle(.page)
                .frame(width: 200, height: 150, alignment: .center)
                
                HStack {
                    Spacer()
                    Button {
                        //
                        apiData.isStartButtonClicked = false
                    } label: {
                        Text("CANCEL")
                            .foregroundColor(.black)
                            .font(.system(size: 15))
                            .bold()
                    }

                    Spacer()
                    NavigationLink(destination: UIKitView(),
                                   label: {
                        Text("LET'S START")
                            .foregroundColor(.black)
                            .font(.system(size: 15))
                            .bold()
                    })
                    Spacer()
                }
            }
        }
    }
}
