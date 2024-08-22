//
//  ContentView.swift
//  SegmentProject
//
//  Created by Aditya on 17/08/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex: Int = 0
    var mainViews: [AnyView] = [
        AnyView(ViewOne()),
        AnyView(ViewTwo()),
        AnyView(ViewThree()),
        AnyView(ViewFour()),
        AnyView(ViewFive()),
        AnyView(ViewSix())
    ]
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 20, height: 19)
                Text("Arjuna JEE")
                    .font(.system(size: 20, weight: .bold))
                    .padding(.leading)
                Spacer()
                Image(systemName: "info.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
           
            
            Divider()
            
            VStack {
                SegmentView(
                    selectedIndex: $selectedIndex,
                    segmentName: [
                        "Description",
                        "All Classes",
                        "Infinite Learning",
                        "Khazana",
                        "Test Series",
                        "Announcement"
                    ]
                )
            }
            .padding(.top, 10)
            Spacer()
            VStack {
                mainViews[selectedIndex]
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
