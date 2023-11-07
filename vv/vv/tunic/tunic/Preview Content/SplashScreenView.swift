//
//  SplashScreenView.swift
//  tunic
//
//  Created by TuniC on 6/11/2023.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Image("TuniCycle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400, height: 400)
        }
    }
}

/*Preview {
    SplashScreenView()
}*/
