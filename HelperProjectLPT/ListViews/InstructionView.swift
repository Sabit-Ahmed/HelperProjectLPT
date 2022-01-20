//
//  InstructionView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 20/1/22.
//

import SwiftUI

struct InstructionView: View {
    
    @Binding var text: String
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Exercise Name")
                .font(.title)
            
            WebView(text: $text)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .onDisappear {
                    presentationMode.wrappedValue.dismiss()
                }
            
        }
    }
}

