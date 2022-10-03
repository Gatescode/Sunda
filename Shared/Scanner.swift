//
//  Scanner.swift
//  Sunda
//
//  Created by Arihant Jain on 9/24/22.
//

import SwiftUI
import Foundation

struct Scanner: View {
    var image: CGImage?
    private let label = Text("frame")
    // test
    var body: some View {
        if let image = image {
            Image(image, scale: 1.0, orientation: .up, label: label)
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
