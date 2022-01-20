//
//  ManualTrakingView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 20/1/22.
//

import SwiftUI

struct ManualTrackingView: View {
    
    @State private var setCount: String = ""
    @State private var repCount: String = ""
    @State private var wrongCount: String = ""
    @Binding var isManualTrackingShowed: Bool
    
    var deviceWidth = UIScreen.main.bounds.width
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(.black)
                .frame(width: deviceWidth - 20, height: 250, alignment: .center)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Manual Tracking")
                    .foregroundColor(.white)
                    .bold()
                
                TextField("Enter Set Count", text: $setCount)
                    .frame(width: deviceWidth - 150, height: 25, alignment: .center)
                    .background(.gray)
                    .border(.gray)
                    .padding(5)
                
                TextField("Enter Repition Count", text: $repCount)
                    .frame(width: deviceWidth - 150, height: 25, alignment: .center)
                    .background(.gray)
                    .border(.gray)
                    .padding(5)
                
                TextField("Enter Wrong Count", text: $wrongCount)
                    .frame(width: deviceWidth - 150, height: 25, alignment: .center)
                    .background(.gray)
                    .border(.gray)
                    .padding(5)
                
                HStack {
                    Spacer()
                    Button {
                        //
                        isManualTrackingShowed = false
                    } label: {
                        Text("CANCEL")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .bold()
                    }

                    Spacer()
                    Button {
                        //
                        isManualTrackingShowed = false
                    } label: {
                        Text("SUBMIT")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .bold()
                    }

                    Spacer()
                }
                
            }
            .padding(.horizontal, 60)
            .padding(.vertical, 20)
        }
        
    }
}

