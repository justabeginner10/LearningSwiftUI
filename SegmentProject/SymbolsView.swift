//
//  SymbolsView.swift
//  SegmentProject
//
//  Created by Aditya on 21/08/24.
//

import SwiftUI

struct SymbolsView: View {
    var body: some View {
        Image(systemName: "cloud.heavyrain")
            .font(.system(size: 100))
            .foregroundStyle(.blue)
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
    }
}

#Preview {
    SymbolsView()
}
