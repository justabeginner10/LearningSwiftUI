//
//  ExercisePricingView.swift
//  SegmentProject
//
//  Created by Aditya on 22/08/24.
//

import SwiftUI

struct ExercisePricingView: View {
    var body: some View {
        ZStack {
            ExtractedView(iconName: "square", planName: "Basic", price: "$9", bgColor: .purple)
                .offset(x: 0, y: 180)
            ExtractedView(iconName: "circle", planName: "Pro", price: "$19", bgColor: .orange)
                .scaleEffect(0.9)
            ExtractedView(iconName: "star", planName: "Team", price: "$299", bgColor: .gray)
                .scaleEffect(0.8)
                .offset(x: 0, y: -180)
        }
        .padding()
    }
}

#Preview {
    ExercisePricingView()
}

struct ExtractedView: View {
    var iconName: String
    var planName: String
    var price: String
    var bgColor: Color
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: iconName)
                .font(.largeTitle)
            Text(planName)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
            Text(price)
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("per month")
                .font(.system(size: 16, design: .rounded))
                .fontWeight(.bold)
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, minHeight: 200)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 5)
                .foregroundStyle(bgColor)
        )
    }
}
