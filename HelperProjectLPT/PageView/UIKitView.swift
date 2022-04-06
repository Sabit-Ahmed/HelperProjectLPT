//
//  UIKitView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 29/11/21.
//

import SwiftUI

struct UIKitView: View {
    
    @EnvironmentObject var apiData: GetApiData
    
    var body: some View {
        
        VStack {
            Text("UIKitView here")
            
            ToastViewDemo2()
        }
        
    }
}

struct UIKitView_Previews: PreviewProvider {
    static var previews: some View {
        UIKitView()
    }
}
