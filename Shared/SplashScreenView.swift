//
//  SplashScreenView.swift
//  Sunda
//
//  Created by Arihant Jain on 8/26/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var active = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if (active) {
            if (true) {
                FirstTime()
            }
            else {
                // Home()
            }
        }
        else {
            VStack {
                VStack {
                    Image("Sunda_Logo")
                    Text("Sunda").font(Font.custom("Apercu Medium", size: 26))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.active = true
                }
            }
        }
        
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
