//
//  ToastViewDemo.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 29/12/21.
//

import AlertToast
import SwiftUI

struct ToastViewDemo: View{

    @State private var showToast = false

    var body: some View{
        VStack{

            Button("Show Toast"){
                 showToast.toggle()
            }
        }
        .toast(isPresenting: $showToast){

            // `.alert` is the default displayMode
//            AlertToast(type: .regular, title: "Message Sent!")
            
            //Choose .hud to toast alert from the top of the screen
//            AlertToast(displayMode: .hud, type: .regular, title: "Message Sent!")
            
            //Choose .banner to slide/pop alert from the bottom of the screen
            AlertToast(displayMode: .banner(.pop), type: .regular, title: "Message Sent!")
        }
    }
}

struct ToastViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ToastViewDemo()
    }
}
