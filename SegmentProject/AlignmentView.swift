//
//  AlignmentView.swift
//  SegmentProject
//
//  Created by Aditya on 20/08/24.
//

import SwiftUI

struct AlignmentGuideExample: View {
    var body: some View {
        HStack(alignment: .myCustomAlignment) {
            Text("Short")
                .alignmentGuide(.myCustomAlignment) { d in d[.bottom] } // Align with the bottom edge of the view

            Text("Much Longer Text")
                .alignmentGuide(.myCustomAlignment) { d in d[.top] } // Align with the top edge of the view

            Text("Mid")
                .alignmentGuide(.myCustomAlignment) { d in d[VerticalAlignment.center] } // Align with the center of the view
        }
        .border(Color.red, width: 1)
    }
}

extension VerticalAlignment {
    private enum MyCustomAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[.bottom] // Default to bottom alignment if no guide is specified
        }
    }
    
    static let myCustomAlignment = VerticalAlignment(MyCustomAlignment.self)
}

struct AlignmentGuideExample_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuideExample()
    }
}
