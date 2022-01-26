//
//  UpperRectangleCard.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 30/11/21.
//

import SwiftUI

struct RectangleCardUpper: View {
    
    @EnvironmentObject var apiData: GetApiData
    
    var body: some View {
        ZStack {
            RectangleCard()
                .frame(height: 180)
            
            VStack(alignment: .leading, spacing: 15) {
                HStack (spacing: 30) {
                    Button {
                        // Show MenuCard
                        apiData.showMenuCard = true
                    } label: {
                        Image(systemName: "text.badge.plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                    }

                    
                    Text("EMMA Virtual Therapist")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
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
            
        }
        
    }
}

struct UpperRectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCardUpper()
    }
}
