//
//  InstructionView2.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 20/1/22.
//

import SwiftUI
import AVKit

struct InstructionViewWithRegex: View {
    var text: String = "<p class=\"MsoNormal\">In standing, begin by holding a dowel behind your back. Using\r\nyour uninjured arm, drive your affected hand behind your back towards the side as far as\r\nyou feel comfortable. Slowly return to the starting position and repeat as\r\nshown on the reference table. Do not lean forward too much and do not\r\ncompensate on your wrist.</p><p class=\"MsoNormal\"><o:p></o:p></p>"
    @Environment(\.presentationMode) var presentationMode
    let videoUrl = URL(string: "https://mmhai.s3.us-east-2.amazonaws.com/LearnTherapist/emma/AROM Ankle Dorsiflexion in Sitting/AROM Ankle Dorsiflexion in Sitting_1639970462_raw.mp4")
    
    var body: some View {
        
        let textToDisplay = text.replacingOccurrences(of: "<[^>]*>|&nbsp|;", with: "", options: .regularExpression,
                                                      range: nil).replacingOccurrences(of: "\r\n", with: " ",
                                                                                       options: .regularExpression, range: nil)
        
        
        VStack {
            
            RectangleCardUpper()
            
            VStack(alignment: .leading) {
                Text("Exercise Name")
                    .bold()
                    .font(.title)
                    
                
                ScrollView {
                    VStack {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Instructions")
                                .font(.system(size: 20))
                                .bold()
                            
                            Text(textToDisplay)
                                
                            
                            if let videoUrl = videoUrl {
                                VideoPlayer(player: AVPlayer(url: videoUrl))
                                    .frame(width: 200, height: 200, alignment: .center)
                            }
                            
                            
                            Text("Images")
                                .font(.system(size: 20))
                                .bold()
                            
                        }
                        
                        VStack {
                            Image(systemName: "figure.wave.circle")
                                .resizable()
                                .frame(width: 200, height: 200, alignment: .center)
                                .scaledToFit()
                            
                            Image(systemName: "figure.wave.circle.fill")
                                .resizable()
                                .frame(width: 200, height: 200, alignment: .center)
                                .scaledToFit()
                        }
                        
                    }
                }
                
                
            }
            .padding()
            
        }
        .onDisappear {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
