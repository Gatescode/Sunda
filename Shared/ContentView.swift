//
//  ContentView.swift
//  Shared
//
//  Created by Arihant Jain on 8/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("ContentView").font(Font.custom("Apercu Bold Italic", size: 20))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        HomeNavigationTest()
    }
}
