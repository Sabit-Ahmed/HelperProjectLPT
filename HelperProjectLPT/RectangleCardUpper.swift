//
//  UpperRectangleCard.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 30/11/21.
//

import SwiftUI

struct RectangleCardUpper: View {
    var body: some View {
        ZStack {
            RectangleCard()
                .frame(height: 250)
            
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "list.bullet")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                    
                    Spacer()
                    Text("EMMA Virtual Therapist")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.top, 25)
                
                HStack(spacing: 25) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 95, height: 95)
                        .clipped()
                        .foregroundColor(.white)
                        
                    VStack(alignment: .leading, spacing: 5) {
                        Text("MyMedicalHUB")
                            .font(.title)
                            .foregroundColor(.white)
                        
                        Text("Hello Hanif Thakur")
                            .foregroundColor(.white)
                        
                        Text("I'm EMMA")
                            .foregroundColor(.white)
                        
                        Text("Your personal exercise assistant")
                            .foregroundColor(.white)
                    }
                }
                .padding()
            }
            
            
        }

    }
}

struct UpperRectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCardUpper()
    }
}
