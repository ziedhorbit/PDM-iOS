//
//  SwiftUIViewSplashscreen.swift
//  vv
//
//  Created by Mac Mini 5 on 6/11/2023.
//

import SwiftUI

struct SwiftUIViewSplashscreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SwiftUIViewSplashscreen_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewSplashscreen()
    }
}
