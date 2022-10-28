//
//  Scanner.swift
//  Sunda
//
//  Created by Arihant Jain on 9/24/22.
//

import SwiftUI
import Foundation

func logtest() {
    print("ayo test")
}

struct Scanner: View {
    var image: CGImage?
    
    private let label = Text("frame")
    
    var body: some View {
        
        if let image = image {
            Image(image, scale: 1.0, orientation: .up, label: label).overlay(Button(action: logtest) {
                Text("")
                    .frame(width: 75, height: 75)
                    .padding(0.0).buttonBorderShape(.roundedRectangle(radius: 100))
            }.background(Color.green).clipShape(Circle()).offset(x: 0, y: 250))
            
        } else {
            Color.black
            
        }
    }
    
}

struct Scanner_Previews: PreviewProvider {
    static var previews: some View {
        Scanner()
    }
}
