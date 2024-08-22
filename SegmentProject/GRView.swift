//
//  GRView.swift
//  SegmentProject
//
//  Created by Aditya on 20/08/24.
//

import SwiftUI

struct GRView: View {
    var body: some View {
        GeometryReader { geometry in
              HStack(alignment: .center) {
                Rectangle()
                  .frame(width: geometry.size.width / 2, height: geometry.size.height / 3)
                  .foregroundColor(.red)
                  .alignmentGuide(.leading) { d in d[HorizontalAlignment.center] }

                Rectangle()
                  .frame(width: geometry.size.width / 2, height: geometry.size.height / 2)
                  .foregroundColor(.blue)
                  .alignmentGuide(.trailing) { d in d[HorizontalAlignment.center] }
              }
            }
            .padding(10)
    }
}

#Preview {
    GRView()
}
