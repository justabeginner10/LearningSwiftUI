//
//  ScrollCardsView.swift
//  SegmentProject
//
//  Created by Aditya on 22/08/24.
//

import SwiftUI

struct ScrollCardsView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Monday, Aug 20".uppercased())
                        .foregroundStyle(.secondary)
                        .font(.system(size: 16, design: .rounded))
                    Text("Your Reading")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                    
                }
                Spacer()
            }
            .padding([.horizontal, .top])
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Group {
                        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                        CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                        CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                        CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
                    }
                    .frame(width: 300)
                }
            }
            Spacer()
        }
        
    }
}

#Preview {
    ScrollCardsView()
}
