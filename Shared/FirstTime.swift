//
//  FirstTime.swift
//  Sunda
//
//  Created by Arihant Jain on 8/26/22.
//

import SwiftUI

struct DetailedInfo: View {
    var body: some View {
        Text("DetailedInfo View")
    }
}

func outlog() {
    print("recieved GOOD")
}

struct FirstTime: View {
    
    @State private var formShow = false
    
    
    var body: some View {
        if (formShow){
            FirstTimeForm()
        }
        else {
            VStack(alignment: .center) {
                Image("Newcomer").aspectRatio(contentMode: .fit).frame(alignment: .topLeading).padding([.bottom], 50)
                Text("Welcome to Sunda.").font(Font.custom("Apercu Medium", size: 24)).padding([.bottom], 10)
                Text("Description").font(Font.custom("Apercu Regular", size: 18)).padding([.bottom], 50)
                Button {
                    formShow = true
                } label: {
                    Label("Next", systemImage: "arrow.right")
                }.buttonStyle(.bordered).foregroundColor(.black).tint(.yellow).font(Font.custom("Apercu Regular", size: 20))
                Spacer()
            }.ignoresSafeArea()
        }
    }
}

struct FirstTime_Previews: PreviewProvider {
    static var previews: some View {
        FirstTime()
    }
}
