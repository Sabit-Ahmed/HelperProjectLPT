//
//  ImageSlider.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 6/4/22.
//

import SwiftUI
import URLImage

struct ImageSliderView: View {
// 1
    private let images = ["https://mmhva.s3.amazonaws.com/Images%2fRS%2fEvalExerciseList%2fafa2cc85-83a2-49f9-aae6-14cf577b7e5e.jpeg", "https://mmhva.s3.amazonaws.com/Images%2fRS%2fEvalExerciseList%2ff940338f-6f4e-423d-a545-43e3f5e89721.jpeg",
        "https://mmhva.s3.amazonaws.com/Images%2fRS%2fEvalExerciseList%2f9d0a8993-65c3-4349-89fa-f770f6e515e4.jpeg",
        "https://mmhva.s3.amazonaws.com/Images%2fRS%2fEvalExerciseList%2f8c3a569f-4e0b-4eaa-b167-b315e74e3f8e.jpeg"]
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
                        URLImage(URL(string: item)!) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 150, alignment: .center)
                                .cornerRadius(5)
                        }
                            
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
