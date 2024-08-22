//
//  RoundedButtonView.swift
//  SegmentProject
//
//  Created by Aditya on 22/08/24.
//

import SwiftUI

struct RoundedButtonView: View {
    var body: some View {
        Button {
            print("Button Tapped")
        } label: {
            Label(
                title: {
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                },
                icon: {
                    Image(systemName: "trash")
                        .font(.title)
                }
            )
        }
        .buttonStyle(GradientBackgroundStyle())
    }
}

struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [.pink, .orange]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(40)
            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
    }
}


#Preview {
    RoundedButtonView()
}
