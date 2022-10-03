//
//  HomeNavigationTest.swift
//  Sunda
//
//  Created by Arihant Jain on 8/23/22.
//



import Foundation
import SwiftUI



struct HomeNavigationTest : View {
    @StateObject private var model = ScannerHandler()
    var body: some View {
        NavigationView {
            TabView {
                
                Text("Recents").tabItem {
                    Image (systemName: "clock")
                    Text("Recents")
                }
                Scanner(image: model.frame).tabItem {
                    Image (systemName: "camera.circle")
                    Text("Scan")
                }
                
            }.navigationTitle("Recents")
        }
    }
}

struct HomeNavigationTest_Preview: PreviewProvider {
    static var previews: some View {
        HomeNavigationTest()
    }
}
