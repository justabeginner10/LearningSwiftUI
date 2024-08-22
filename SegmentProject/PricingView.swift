//
//  PricingView.swift
//  SegmentProject
//
//  Created by Aditya on 22/08/24.
//

import SwiftUI

struct PricingView: View {
    var body: some View {
        VStack {
            HStack {
                HeaderView()
                Spacer()
            }
            HStack {
                PlanView(
                    bgColor: .purple,
                    planType: "Basic",
                    price: "$9",
                    perUnit: "per month"
                )
                PlanView(
                    bgColor: .gray,
                    planType: "Pro",
                    price: "$19",
                    perUnit: "per month"
                )
            }
        }
        .padding()
    }
}

#Preview {
    PricingView()
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}

struct PlanView: View {
    var bgColor: Color
    var planType: String
    var price: String
    var perUnit: String
    var body: some View {
        VStack {
            Text(planType)
                .font(.system(.title, design: .rounded))
                .fontWeight (.black)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
            Text(perUnit)
                .font(.headline)
                .foregroundStyle(.gray)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background() {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(bgColor)
        }
    }
}
