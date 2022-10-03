//
//  FirstTimeForm.swift
//  Sunda
//
//  Created by Arihant Jain on 8/29/22.
//

import SwiftUI
struct CustomColor {
    static let mintyTheme = Color("mintytheme")
}
struct FirstTimeForm: View {
    @State private var showHome = false
    @State private var transSet: CGFloat = 0.0
    enum Choose: String, CaseIterable, Identifiable {
        case no
        case yes
        var id: String { self.rawValue }
    }
    enum Territory: String, CaseIterable, Identifiable {
        case AL
        case AK
        case AZ
        case AR
        case CA
        case CO
        case CT
        case DE
        case FL
        case GA
        case HI
        case ID
        case IL
        case IN
        case IA
        case KS
        case KY
        case LA
        case ME
        case MD
        case MA
        case MI
        case MN
        case MS
        case MO
        case MT
        case NE
        case NV
        case NH
        case NJ
        case NM
        case NY
        case NC
        case ND
        case OH
        case OK
        case OR
        case PA
        case RI
        case SC
        case SD
        case TN
        case TX
        case UT
        case VT
        case VA
        case WA
        case WV
        case WI
        case WY
        var id: String {self.rawValue}
    }
    @State var choose: Choose = .no
    @State var territory: Territory = .AL
    @State var motive: String = ""
    
    var body: some View {
        if (showHome) {
            HomeNavigationTest()
        } else {
            VStack(alignment: .center) {
    //            Image("Newcomer").aspectRatio(contentMode: .fit).frame(alignment: .topLeading).padding([.bottom], 50).offset(y: transSet).onAppear {
    //                withAnimation(.easeOut(duration: 0.8)) {
    //                    self.transSet = -850.0
    //                }
    //            }
                Text("Tell us a little about yourself.").font(Font.custom("Apercu Bold", size: 35)).padding([.top], 70)
                Form {
                    Section {
                        TextField("First Name", text: .constant("")).font(Font.custom("Apercu Regular", size: 18))
                        TextField("Last Name", text: .constant("")).font(Font.custom("Apercu Regular", size: 18))
                        
                    }
                    Section {
                        Text("State").font(Font.custom("Apercu Light", size: 19))
                        Picker ("State", selection: $territory){
                            ForEach(Territory.allCases) { territory in
                                Text(territory.rawValue).tag(territory).font(Font.custom("Apercu Light", size: 20))
                            }
                        }.pickerStyle(.wheel)
                    }
                    Section {
                        Text("Have you had a lesion or mark related to skin cancer within the past 48 months?").font(Font.custom("Apercu Light", size: 19))
                        Picker("Choose", selection: $choose) {
                            ForEach(Choose.allCases) { choose in
                                Text(choose.rawValue.capitalized).tag(choose)
                            }
                        }.pickerStyle(SegmentedPickerStyle()).padding([.bottom], 0)
                    }
                }.background(CustomColor.mintyTheme).onAppear{ UITableView.appearance().backgroundColor = .clear }.onDisappear { UITableView.appearance().backgroundColor = .systemGroupedBackground }
                Button {
                    showHome = true
                } label: {
                    Label("Finish", systemImage: "arrow.right")
                }.buttonStyle(.bordered).foregroundColor(.black).tint(.yellow).font(Font.custom("Apercu Regular", size: 20)).padding([.top], 0)
                
                Spacer()
            }.ignoresSafeArea().background(CustomColor.mintyTheme)
        }
    }
}

struct FirstTimeForm_Previews: PreviewProvider {
    static var previews: some View {
        FirstTimeForm()
    }
}
