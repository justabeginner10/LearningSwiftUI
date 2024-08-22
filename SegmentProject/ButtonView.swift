//
//  ButtonView.swift
//  SegmentProject
//
//  Created by Aditya on 22/08/24.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            print("")
        } label: {
            Text("Hello World")
                .foregroundStyle(.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 50)
                )
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(.blue, lineWidth: 5)
                }
        }
    }
}

#Preview {
    ButtonView()
}
