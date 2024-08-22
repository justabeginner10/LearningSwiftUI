//
//  SegmentView.swift
//  SegmentProject
//
//  Created by Aditya on 18/08/24.
//

import SwiftUI

struct SegmentView: View {
    @Binding var selectedIndex: Int
    var segmentName: [String]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack
 {
                ForEach(Array(segmentName.enumerated()), id: \.0) { (index, name) in
                    VStack(alignment: .center) {
                        Text(name)
                            .font(.system(size: 16,
                                          weight: index == selectedIndex ? .bold : .light))
                            .foregroundStyle(index == selectedIndex ? .indigo : .black)
                            .padding(.horizontal, 10)
                        if selectedIndex == index {
                            Rectangle()
                                .frame(height: 4)
                                .foregroundStyle(.indigo)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.interactiveSpring()) {
                            self.selectedIndex = index
                        }
                    }
                }
            }
        }
        .padding(.vertical, 0)
    }
}

#Preview {
    SegmentView(
        selectedIndex: .constant(0),
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
