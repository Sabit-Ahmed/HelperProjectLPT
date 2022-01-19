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
                .frame(height: 180)
            
            VStack(spacing: 15) {
                HStack {
                    Spacer()
                    Image(systemName: "list.bullet")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    
                    Spacer()
                    Text("EMMA Virtual Therapist")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        
                    Spacer()
                }
                
                HStack(spacing: 15) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 85, height: 85)
                        .clipped()
                        .foregroundColor(.white)
                        
                    VStack(alignment: .leading, spacing: 3) {
                        Text("MyMedicalHUB")
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                        Text("Hello Hanif Thakur.")
                            .foregroundColor(.white)
                        
                        Text("I'm EMMA.")
                            .foregroundColor(.white)
                        
                        Text("Your personal exercise assistant.")
                            .foregroundColor(.white)
                    }
                    
                }
                
                
                
            }
            .padding(5)
            
        }

    }
}

struct UpperRectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCardUpper()
    }
}
