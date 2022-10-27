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
            Image(image, scale: 1.0, orientation: .up, label: label)//.overlay()
            
        } else {
            Button("", action: logtest).frame(width: 200, height: 200).background(Color("mintytheme")).clipShape(Circle())
            
        }
    }
    
}

struct Scanner_Previews: PreviewProvider {
    static var previews: some View {
        Scanner()
    }
}
