//
//  HomeNavigationTest.swift
//  Sunda
//
//  Created by Arihant Jain on 8/23/22.
//



import Foundation
import SwiftUI
import AVFoundation



struct HomeNavigationTest : View {
    @StateObject private var model = ScannerHandler()
    
    var body: some View {
        
        NavigationView {
            
            TabView {
                
                Text("Recents test").tabItem {
                    Image (systemName: "clock").background(Color.green)
                    Text("Recents").background(Color.green)
                }
                Scanner(image: model.frame).tabItem {
                    Image (systemName: "camera.circle")
                    Text("Scan")
                }
                
            }.onAppear() {
                UITabBar.appearance().backgroundColor = UIColor.white
            }
            
        }
        
    }
}

struct HomeNavigationTest_Preview: PreviewProvider {
    static var previews: some View {
        HomeNavigationTest()
    }
}
